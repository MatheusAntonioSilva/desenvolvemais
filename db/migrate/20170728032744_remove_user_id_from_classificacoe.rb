class RemoveUserIdFromClassificacoe < ActiveRecord::Migration
  def change
    remove_column :classificacoes, :user_id, :integer
  end
end
