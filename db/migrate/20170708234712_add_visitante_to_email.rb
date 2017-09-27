class AddVisitanteToEmail < ActiveRecord::Migration
  def change
    add_column :emails, :visitante, :boolean
  end
end
