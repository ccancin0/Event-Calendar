var date_range_picker;
date_range_picker = function() {
  $('.date-range-picker').each(function(){
    $(this).daterangepicker({
        timePicker: true,
        timePickerIncrement: 30,
        alwaysShowCalendars: true
    }, function(start_time, end_time, label) {
      $('.start_time_hidden').val(start_time.format('YYYY-MM-DD HH:mm'));
      $('.end_time_hidden').val(end_time.format('YYYY-MM-DD HH:mm'));
    });
  })
};
$(document).on('turbolinks:load', date_range_picker);
