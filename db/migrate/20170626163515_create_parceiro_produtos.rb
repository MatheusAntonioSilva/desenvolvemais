class CreateParceiroProdutos < ActiveRecord::Migration
  def change
    create_table :parceiro_produtos do |t|
      t.integer :produto_id
      t.integer :parceiro_id

      t.timestamps null: false
    end
  end
end
