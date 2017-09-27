class AddGrupoIdToProduto < ActiveRecord::Migration
  def change
    add_column :produtos, :grupo_id, :integer
  end
end
