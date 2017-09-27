class AddTeste1ToPerfil < ActiveRecord::Migration
  def change
    add_column :perfils, :teste1, :string
  end
end
