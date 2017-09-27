json.array!(@motivos) do |motivo|
  json.extract! motivo, :id, :descricao
  json.url motivo_url(motivo, format: :json)
end
