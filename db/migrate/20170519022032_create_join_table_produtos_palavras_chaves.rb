class CreateJoinTableProdutosPalavrasChaves < ActiveRecord::Migration
  def change
    create_join_table :produtos, :palavras_chaves do |t|
      # t.index [:produto_id, :palavras_chafe_id]
      # t.index [:palavras_chafe_id, :produto_id]
    end
  end
end
