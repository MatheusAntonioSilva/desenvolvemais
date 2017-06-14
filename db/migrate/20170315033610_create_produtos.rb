class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :descricao
      t.string :codbarra
      t.string :codfabrica
      t.string :unidade
      t.int :marca_id
      t.int :grupo_id
      t.int :classificacoe_id
      t.int :subgrupo_id
      t.float :preco_venda
      t.float :preco_custo
    
 
 

      t.timestamps null: false
    end
  end
end
