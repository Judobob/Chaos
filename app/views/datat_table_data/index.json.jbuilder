json.array!(@datat_table_data) do |datat_table_datum|
  json.extract! datat_table_datum, :id, :name
  json.url datat_table_datum_url(datat_table_datum, format: :json)
end
