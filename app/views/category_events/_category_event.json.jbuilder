json.extract! category_event, :id, :event_id, :category_id, :created_at, :updated_at
json.url category_event_url(category_event, format: :json)