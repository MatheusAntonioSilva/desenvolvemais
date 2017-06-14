class AddMargemBrutaToProdutos < ActiveRecord::Migration
  def change
    add_column :produtos, :margem_bruta, :float
  end
end
