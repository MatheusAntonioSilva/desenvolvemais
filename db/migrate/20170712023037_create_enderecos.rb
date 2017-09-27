class CreateEnderecos < ActiveRecord::Migration
  def change
    create_table :enderecos do |t|
      t.string :endereco
      t.integer :numero
      t.string :cep
      t.integer :parceiroproduto_id
      t.integer :visitanteinteressado_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
