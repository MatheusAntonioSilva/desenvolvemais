class CreateCategoria < ActiveRecord::Migration
  def change
    create_table :categoria do |t|
      t.string :descricao
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
