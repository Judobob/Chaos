json.array!(@algorithm_names) do |algorithm_name|
  json.extract! algorithm_name, :id, :algorithm_name
  json.url algorithm_name_url(algorithm_name, format: :json)
end
