class CreateMotivos < ActiveRecord::Migration
  def change
    create_table :motivos do |t|
      t.string :descricao

      t.timestamps null: false
    end
  end
end
