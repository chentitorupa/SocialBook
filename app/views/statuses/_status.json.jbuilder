json.extract! status, :id, :name, :content, :created_at, :updated_at
json.url status_url(status, format: :json)
