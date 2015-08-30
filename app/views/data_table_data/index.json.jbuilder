json.array!(@data_table_data) do |data_table_datum|
  json.extract! data_table_datum, :id, :name
  json.url data_table_datum_url(data_table_datum, format: :json)
end
