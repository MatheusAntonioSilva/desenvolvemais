class AddEstoqueToProduto < ActiveRecord::Migration
  def change
    add_column :produtos, :estoque, :integer
  end
end
