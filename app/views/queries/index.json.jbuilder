json.array!(@queries) do |query|
  json.extract! query, :id, :nombre, :email, :consulta, :respuesta
  json.url query_url(query, format: :json)
end
