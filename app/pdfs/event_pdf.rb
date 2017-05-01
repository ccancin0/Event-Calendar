class EventPdf < Prawn::Document
  def initialize(event)
    super()
      @event = event
      text "\##{@event.title}"
      text "\##{@event.description}"
      text "\##{@event.address}"
  end
end
