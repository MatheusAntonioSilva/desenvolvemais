class AddNameToAgendas < ActiveRecord::Migration
  def change
    add_column :agendas, :name, :string
  end
end
