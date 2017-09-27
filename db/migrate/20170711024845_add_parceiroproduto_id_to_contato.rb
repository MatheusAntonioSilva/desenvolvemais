class AddParceiroprodutoIdToContato < ActiveRecord::Migration
  def change
    add_column :contatos, :parceiroproduto_id, :integer
  end
end
