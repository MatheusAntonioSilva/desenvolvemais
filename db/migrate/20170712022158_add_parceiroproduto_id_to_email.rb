class AddParceiroprodutoIdToEmail < ActiveRecord::Migration
  def change
    add_column :emails, :parceiroproduto_id, :integer
  end
end
