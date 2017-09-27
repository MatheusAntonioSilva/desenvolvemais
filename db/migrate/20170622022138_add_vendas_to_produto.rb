class AddVendasToProduto < ActiveRecord::Migration
  def change
    add_column :produtos, :venda, :integer
  end
end
