class AddVisitanteinteressanteIdToContato < ActiveRecord::Migration
  def change
    add_column :contatos, :visitanteinteressado_id, :integer
  end
end
