class AddNameToParceiroProdutos < ActiveRecord::Migration
  def change
    add_column :parceiro_produtos, :name, :string
  end
end
