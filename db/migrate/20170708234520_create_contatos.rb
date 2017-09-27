class CreateContatos < ActiveRecord::Migration
  def change
    create_table :contatos do |t|
      t.string :contato
      t.boolean :visitante

      t.timestamps null: false
    end
  end
end
