class AddConhecimentosToPerfil < ActiveRecord::Migration
  def change
    add_column :perfils, :conhecimentos, :string
  end
end
