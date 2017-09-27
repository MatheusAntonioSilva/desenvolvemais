class AddTitulodoisToIdeia < ActiveRecord::Migration
  def change
    add_column :ideia, :titulodois, :string
  end
end
