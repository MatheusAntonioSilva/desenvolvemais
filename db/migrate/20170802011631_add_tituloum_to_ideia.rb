class AddTituloumToIdeia < ActiveRecord::Migration
  def change
    add_column :ideia, :tituloum, :string
  end
end
