class AddJuridicaToParceiro < ActiveRecord::Migration
  def change
    add_column :parceiros, :juridica, :boolean
  end
end
