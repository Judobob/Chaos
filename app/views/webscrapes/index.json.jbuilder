json.array!(@webscrapes) do |webscrape|
  json.extract! webscrape, :id, :name
  json.url webscrape_url(webscrape, format: :json)
end
