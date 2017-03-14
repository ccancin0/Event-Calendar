var initialize_calendar;
initialize_calendar = function() {
  $('.calendar').each(function(){
    var calendar = $(this);
    calendar.fullCalendar({
      header: {
        left: 'prev,next today',
        center: 'title',
        right: 'month,agendaWeek,agendaDay'
      },
      selectable: true,
      selectHelper: true,
      editable: true,
      eventLimit: true,
      events: '/events.json',

      select: function(start_time, end_time) {
        $.getScript('/events/new', function() {
          $('#event_date').val(moment(start_time).format("MM/DD/YYYY HH:mm") + ' - ' + moment(end_time).format("MM/DD/YYYY HH:mm"))
          date_range_picker();
          $('.start_time_hidden').val(moment(start_time).format('YYYY-MM-DD HH:mm'));
          $('.end_time_hidden').val(moment(end_time).format('YYYY-MM-DD HH:mm'));
        });

        calendar.fullCalendar('unselect');
      },

      eventDrop: function(event, delta, revertFunc) {
        event_data = {
          event: {
            id: event.id,
            start_time: event.start_time.format(),
            end_time: event.end_time.format()
          }
        };
        $.ajax({
            url: event.update_url,
            data: event_data,
            type: 'PATCH'
        });
      },

      eventClick: function(event, jsEvent, view) {
        $.getScript(event.edit_url, function() {
          $('#event_date').val(moment(event.start_time).format("MM/DD/YYYY HH:mm") + ' - ' + moment(event.end_time).format("MM/DD/YYYY HH:mm"))
          date_range_picker();
          $('.start_time_hidden').val(moment(event.start_time).format('YYYY-MM-DD HH:mm'));
          $('.end_time_hidden').val(moment(event.end_time).format('YYYY-MM-DD HH:mm'));
        });
      }
    });
  })
};
$(document).on('turbolinks:load', initialize_calendar);
