class AddUfToEndereco < ActiveRecord::Migration
  def change
    add_column :enderecos, :uf, :char[2]
  end
end
