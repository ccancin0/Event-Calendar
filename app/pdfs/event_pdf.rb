class EventPdf < Prawn::Document
  def initialize(event)
    super()
      text "#{event.title}".html_safe
      text "#{event.description}".html_safe
      text "#{event.address}"
  end
end
