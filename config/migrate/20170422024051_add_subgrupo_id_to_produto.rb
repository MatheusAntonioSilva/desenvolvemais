class AddSubgrupoIdToProduto < ActiveRecord::Migration
  def change
    add_column :produtos, :subgrupo_id, :integer
  end
end
