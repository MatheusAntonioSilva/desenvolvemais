class AddTipoprojetoIdToProduto < ActiveRecord::Migration
  def change
    add_column :produtos, :tipoprojeto_id, :integer
  end
end
