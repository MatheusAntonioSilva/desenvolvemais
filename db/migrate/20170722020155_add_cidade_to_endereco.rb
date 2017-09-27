class AddCidadeToEndereco < ActiveRecord::Migration
  def change
    add_column :enderecos, :cidade, :string
  end
end
