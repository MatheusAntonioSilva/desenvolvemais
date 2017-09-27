class AddUserIdToPlataforma < ActiveRecord::Migration
  def change
    add_column :plataformas, :user_id, :integer
    add_index :plataformas, :user_id
  end
end
