class AddUserIdToIdeia < ActiveRecord::Migration
  def change
    add_column :ideia, :user_id, :integer
    add_index :ideia, :user_id
  end
end
