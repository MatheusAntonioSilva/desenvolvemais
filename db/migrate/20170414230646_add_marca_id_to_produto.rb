class AddMarcaIdToProduto < ActiveRecord::Migration
  def change
    add_column :produtos, :marca_id, :integer
  end
end
