json.array!(@items) do |item|
  json.extract! item, :id, :name, :category, :price_per_unit
  json.url item_url(item, format: :json)
end
