class CreatePalavrasChaves < ActiveRecord::Migration
  def change
    create_table :palavras_chaves do |t|
      t.string :palavra

      t.timestamps null: false
    end
  end
end
