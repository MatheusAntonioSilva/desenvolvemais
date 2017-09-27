class AddDescricaodoisToIdeia < ActiveRecord::Migration
  def change
    add_column :ideia, :descricaodois, :string
  end
end
