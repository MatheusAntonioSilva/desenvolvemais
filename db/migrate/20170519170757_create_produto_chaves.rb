class CreateProdutoChaves < ActiveRecord::Migration
  def change
    create_table :produto_chaves do |t|

      t.timestamps null: false
    end
  end
end
