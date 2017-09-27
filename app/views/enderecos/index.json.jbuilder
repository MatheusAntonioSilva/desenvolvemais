json.array!(@enderecos) do |endereco|
  json.extract! endereco, :id, :endereco, :numero, :cep, :parceiroproduto_id, :visitanteinteressado_id, :user_id
  json.url endereco_url(endereco, format: :json)
end
