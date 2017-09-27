class AddDescricaocompletaToProduto < ActiveRecord::Migration
  def change
    add_column :produtos, :descricaocompleta, :string
  end
end
