class AddComplementoToEndereco < ActiveRecord::Migration
  def change
    add_column :enderecos, :complemento, :string
  end
end
