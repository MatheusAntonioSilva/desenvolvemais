class AddClassificacoeIdToProduto < ActiveRecord::Migration
  def change
    add_column :produtos, :classificacoe_id, :integer
  end
end
