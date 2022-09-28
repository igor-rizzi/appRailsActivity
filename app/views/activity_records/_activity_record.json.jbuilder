json.extract! activity_record, :id, :activity_id, :record_date, :quantity, :created_at, :updated_at
json.url activity_record_url(activity_record, format: :json)
