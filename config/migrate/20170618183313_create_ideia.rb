class CreateIdeia < ActiveRecord::Migration
  def change
    create_table :ideia do |t|
      t.string :descricao
      t.string :descricaocompleta

      t.timestamps null: false
    end
  end
end
