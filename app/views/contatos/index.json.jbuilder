json.array!(@contatos) do |contato|
  json.extract! contato, :id, :contato, :visitante
  json.url contato_url(contato, format: :json)
end
