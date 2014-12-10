json.array!(@modelos) do |modelo|
  json.extract! modelo, :id, :modelo
  json.url modelo_url(modelo, format: :json)
end
