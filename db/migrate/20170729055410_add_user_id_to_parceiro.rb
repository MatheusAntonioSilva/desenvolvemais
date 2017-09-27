class AddUserIdToParceiro < ActiveRecord::Migration
  def change
    add_column :parceiros, :user_id, :integer
    add_index :parceiros, :user_id
  end
end
