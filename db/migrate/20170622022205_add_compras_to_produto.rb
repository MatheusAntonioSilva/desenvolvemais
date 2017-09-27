class AddComprasToProduto < ActiveRecord::Migration
  def change
    add_column :produtos, :compra, :integer
  end
end
