json.array!(@modulos) do |modulo|
  json.extract! modulo, :id, :descricao, :user_id
  json.url modulo_url(modulo, format: :json)
end
