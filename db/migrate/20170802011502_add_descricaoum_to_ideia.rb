class AddDescricaoumToIdeia < ActiveRecord::Migration
  def change
    add_column :ideia, :descricaoum, :string
  end
end
