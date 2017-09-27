class AddErpToProduto < ActiveRecord::Migration
  def change
    add_column :produtos, :erp, :integer
  end
end
