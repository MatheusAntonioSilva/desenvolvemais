class AddDescricaotresToIdeia < ActiveRecord::Migration
  def change
    add_column :ideia, :descricaotres, :string
  end
end
