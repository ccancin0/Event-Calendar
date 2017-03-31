json.extract! rsvp, :id, :title, :description, :date, :start_time, :end_time, :created_at, :updated_at
json.url rsvp_url(rsvp, format: :json)