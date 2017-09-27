class AddPerfilIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :perfil_id, :integer
  end
end
