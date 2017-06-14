json.array!(@parceiro) do |parceiro|
  json.extract! parceiro, :id, :nome, :cpf_cnpj, :rg, :telefone, :apelido, :fisica_juridica, :dt_nacimento, :cliente, :fornecedor, :cep, :endereco, :numero, :ibge, :bairro, :cidade, :uf, :pais
  json.url parceiro_url(parceiro, format: :json)
end
