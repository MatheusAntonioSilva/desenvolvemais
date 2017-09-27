class AddTesteToPerfil < ActiveRecord::Migration
  def change
    add_column :perfils, :teste, :integer
  end
end
