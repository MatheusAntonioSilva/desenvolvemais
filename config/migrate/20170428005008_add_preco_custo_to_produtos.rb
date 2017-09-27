class AddPrecoCustoToProdutos < ActiveRecord::Migration
  def change
    add_column :produtos, :preco_custo, :float
  end
end
