class AddSobrenomeToUser < ActiveRecord::Migration
  def change
    add_column :users, :sobrenome, :string
  end
end
