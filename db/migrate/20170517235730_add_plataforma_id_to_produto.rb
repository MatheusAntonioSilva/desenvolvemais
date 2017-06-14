class AddPlataformaIdToProduto < ActiveRecord::Migration
  def change
    add_column :produtos, :plataforma_id, :integer
  end
end
