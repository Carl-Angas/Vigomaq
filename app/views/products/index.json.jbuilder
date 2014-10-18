json.array!(@products) do |product|
  json.extract! product, :id, :nombre, :modelo, :marca, :precio, :categoria, :tipo
  json.url product_url(product, format: :json)
end
