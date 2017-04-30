class EventPdf < Prawn::Document
  def initialize(event)
    super()
    @events = event
    text "hello \##{@events.event.title}"
  end
end
