class CreatePerfils < ActiveRecord::Migration
  def change
    create_table :perfils do |t|
      t.string :descricao
      t.string :profissao
      t.string :objetivo
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
