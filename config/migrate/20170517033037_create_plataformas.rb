class CreatePlataformas < ActiveRecord::Migration
  def change
    create_table :plataformas do |t|
      t.string :plataforma

      t.timestamps null: false
    end
  end
end
