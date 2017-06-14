class CreateParceiros < ActiveRecord::Migration
  def change
    create_table :parceiros do |t|
      t.string :nome
      t.string :cpf_cnpj
      t.string :rg
      t.string :telefone
      t.string :apelido
      t.date :dt_nacimento
      t.boolean :cliente
      t.boolean :fornecedor
      t.string :cep
      t.string :endereco
      t.integer :numero
      t.integer :ibge
      t.string :bairro
      t.string :cidade
      t.string :uf
      t.string :pais

      t.timestamps null: false
    end
  end
end
