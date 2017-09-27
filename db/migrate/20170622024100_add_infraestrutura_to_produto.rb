class AddInfraestruturaToProduto < ActiveRecord::Migration
  def change
    add_column :produtos, :infraestrutura, :integer
  end
end
