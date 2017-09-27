class AddJogosToProduto < ActiveRecord::Migration
  def change
    add_column :produtos, :jogos, :integer
  end
end
