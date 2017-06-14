class AddFisicaToParceiro < ActiveRecord::Migration
  def change
    add_column :parceiros, :fisica, :boolean
  end
end
