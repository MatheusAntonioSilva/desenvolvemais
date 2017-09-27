class AddTitulotresToIdeia < ActiveRecord::Migration
  def change
    add_column :ideia, :titulotres, :string
  end
end
