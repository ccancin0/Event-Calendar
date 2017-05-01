class EventPdf < Prawn::Document
  def initialize(event)
    super()
      text "\##{event.title}"
      text "\##{event.description}"
      text "\##{event.address}"
  end
end
