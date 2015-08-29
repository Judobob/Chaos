json.array!(@table_names) do |table_name|
  json.extract! table_name, :id, :table_name
  json.url table_name_url(table_name, format: :json)
end
