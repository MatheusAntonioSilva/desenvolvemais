class AddVisitanteinteressanteIdToEmail < ActiveRecord::Migration
  def change
    add_column :emails, :visitanteinteressado_id, :integer
  end
end
