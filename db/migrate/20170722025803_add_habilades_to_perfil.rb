class AddHabiladesToPerfil < ActiveRecord::Migration
  def change
    add_column :perfils, :habilidades, :string
  end
end
