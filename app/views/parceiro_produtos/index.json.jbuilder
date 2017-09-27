json.array!(@parceiro_produtos) do |parceiro_produto|
  json.extract! parceiro_produto, :id, :produto_id, :parceiro_id
  json.url parceiro_produto_url(parceiro_produto, format: :json)
end
