class AddAniversarioToPerfil < ActiveRecord::Migration
  def change
    add_column :perfils, :aniversario, :date
  end
end
