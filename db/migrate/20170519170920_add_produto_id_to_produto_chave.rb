class AddProdutoIdToProdutoChave < ActiveRecord::Migration
  def change
    add_column :produto_chaves, :produto_id, :integer
  end
end
