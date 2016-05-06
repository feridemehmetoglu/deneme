json.array!(@yandalagits) do |yandalagit|
  json.extract! yandalagit, :id, :index
  json.url yandalagit_url(yandalagit, format: :json)
end
