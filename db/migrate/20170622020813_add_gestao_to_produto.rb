class AddGestaoToProduto < ActiveRecord::Migration
  def change
    add_column :produtos, :gestao, :integer
  end
end
