json.array!(@ideia) do |ideium|
  json.extract! ideium, :id, :descricao, :descricaocompleta
  json.url ideium_url(ideium, format: :json)
end
