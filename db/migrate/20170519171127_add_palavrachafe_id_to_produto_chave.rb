class AddPalavrachafeIdToProdutoChave < ActiveRecord::Migration
  def change
    add_column :produto_chaves, :palavrachafe_id, :integer
  end
end
