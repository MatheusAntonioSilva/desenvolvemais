json.array!(@perfils) do |perfil|
  json.extract! perfil, :id, :descricao, :profissao, :objetivo, :user_id
  json.url perfil_url(perfil, format: :json)
end
