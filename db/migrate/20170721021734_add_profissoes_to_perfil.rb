class AddProfissoesToPerfil < ActiveRecord::Migration
  def change
    add_column :perfils, :profissoes, :string
  end
end
