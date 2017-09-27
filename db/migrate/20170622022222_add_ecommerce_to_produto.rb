class AddEcommerceToProduto < ActiveRecord::Migration
  def change
    add_column :produtos, :ecommerce, :integer
  end
end
