class AddEmpresaToUser < ActiveRecord::Migration
  def change
    add_column :users, :empresa, :string
  end
end
