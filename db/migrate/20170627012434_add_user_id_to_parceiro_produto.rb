class AddUserIdToParceiroProduto < ActiveRecord::Migration
  def change
    add_column :parceiro_produtos, :user_id, :integer
    add_index :parceiro_produtos, :user_id
  end
end
