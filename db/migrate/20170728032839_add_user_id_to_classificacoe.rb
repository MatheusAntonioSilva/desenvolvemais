class AddUserIdToClassificacoe < ActiveRecord::Migration
  def change
    add_column :classificacoes, :user_id, :integer
    add_index :classificacoes, :user_id
  end
end
