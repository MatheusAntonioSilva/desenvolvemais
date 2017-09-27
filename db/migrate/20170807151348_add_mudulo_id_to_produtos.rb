class AddMuduloIdToProdutos < ActiveRecord::Migration
  def change
    add_column :produtos, :modulo_id, :integer
  end
end
