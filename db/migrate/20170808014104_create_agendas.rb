class CreateAgendas < ActiveRecord::Migration
  def change
    create_table :agendas do |t|
      t.string :descricao
      t.date :data
      t.time :horario_inicio
      t.time :horario_fim
      t.integer :user_id
      t.integer :empresa_id
      t.integer :produto_id
      t.integer :motivo_id
      t.string :observacao

      t.timestamps null: false
    end
  end
end
