json.extract! activity, :id, :description, :metric, :periodicity, :activity_type, :method, :created_at, :updated_at
json.url activity_url(activity, format: :json)
