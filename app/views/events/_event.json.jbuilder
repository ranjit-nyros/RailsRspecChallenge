json.extract! event, :id, :title, :description, :start_date, :end_date, :begin_time, :end_time, :location, :entry_type, :hosted_by, :contact_person, :contact_email, :mobile_number, :chief_guest, :status, :event_category, :user_id, :created_at, :updated_at
json.url event_url(event, format: :json)
