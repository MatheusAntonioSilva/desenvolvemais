class AddVisitanteToParceiroProdutos < ActiveRecord::Migration
  def change
    add_column :parceiro_produtos, :visitante, :boolean
  end
end
