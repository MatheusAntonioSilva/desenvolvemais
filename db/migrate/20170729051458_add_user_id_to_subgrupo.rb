class AddUserIdToSubgrupo < ActiveRecord::Migration
  def change
    add_column :subgrupos, :user_id, :integer
    add_index :subgrupos, :user_id
  end
end
