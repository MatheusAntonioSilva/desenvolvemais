json.array!(@visitanteinteressados) do |visitanteinteressado|
  json.extract! visitanteinteressado, :id, :name
  json.url visitanteinteressado_url(visitanteinteressado, format: :json)
end
