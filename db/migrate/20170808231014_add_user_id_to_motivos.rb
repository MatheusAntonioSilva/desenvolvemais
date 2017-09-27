class AddUserIdToMotivos < ActiveRecord::Migration
  def change
    add_column :motivos, :user_id, :integer
    add_index :motivos, :user_id
  end
end
