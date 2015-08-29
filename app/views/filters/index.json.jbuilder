json.array!(@filters) do |filter|
  json.extract! filter, :id, :filter_name
  json.url filter_url(filter, format: :json)
end
