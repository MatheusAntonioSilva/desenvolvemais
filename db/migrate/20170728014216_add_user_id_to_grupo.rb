class AddUserIdToGrupo < ActiveRecord::Migration
  def change
    add_column :grupos, :user_id, :integer
    add_index :grupos, :user_id
  end
end
