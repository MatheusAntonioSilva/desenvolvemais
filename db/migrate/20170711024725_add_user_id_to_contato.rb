class AddUserIdToContato < ActiveRecord::Migration
  def change
    add_column :contatos, :user_id, :integer
  end
end
