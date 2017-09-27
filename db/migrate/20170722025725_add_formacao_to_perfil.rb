class AddFormacaoToPerfil < ActiveRecord::Migration
  def change
    add_column :perfils, :formacao, :string
  end
end
