json.array!(@agendas) do |agenda|
  json.extract! agenda, :id, :descricao, :data, :horario_inicio, :horario_fim, :user_id, :empresa_id, :produto_id, :motivo_id, :observacao
  json.url agenda_url(agenda, format: :json)
end
