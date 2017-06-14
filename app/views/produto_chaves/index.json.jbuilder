json.array!(@produto_chaves) do |produto_chafe|
  json.extract! produto_chafe, :id
  json.url produto_chafe_url(produto_chafe, format: :json)
end
