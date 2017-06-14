json.array!(@financeiros) do |financeiro|
  json.extract! financeiro, :id, :parcela, :data_emissa, :data_vencimento, :valor, :data_rebimento, :valor_recebido
  json.url financeiro_url(financeiro, format: :json)
end
