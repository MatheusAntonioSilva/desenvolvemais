class AddPaisToEndereco < ActiveRecord::Migration
  def change
    add_column :enderecos, :pais, :string
  end
end
