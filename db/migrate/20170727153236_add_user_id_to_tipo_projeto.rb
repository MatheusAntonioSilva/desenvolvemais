class AddUserIdToTipoProjeto < ActiveRecord::Migration
  def change
    add_column :tipo_projetos, :user_id, :integer
    add_index :tipo_projetos, :user_id
  end
end
