class CreateSubgrupos < ActiveRecord::Migration
  def change
    create_table :subgrupos do |t|
      t.string :nome

      t.timestamps null: false
    end
  end
end
