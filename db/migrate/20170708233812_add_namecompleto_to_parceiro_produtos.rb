class AddNamecompletoToParceiroProdutos < ActiveRecord::Migration
  def change
    add_column :parceiro_produtos, :namecompleto, :string
  end
end
