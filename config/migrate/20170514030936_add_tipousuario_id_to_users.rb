class AddTipousuarioIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :tipousuario_id, :integer
  end
end
