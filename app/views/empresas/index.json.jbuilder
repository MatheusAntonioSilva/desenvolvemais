json.array!(@empresas) do |empresa|
  json.extract! empresa, :id, :razsocial, :cnpj, :fantasia, :data_contrato, :data_vencimento, :token, :valor, :status_id, :tipo_id
  json.url empresa_url(empresa, format: :json)
end
