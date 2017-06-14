class CreateFinanceiros < ActiveRecord::Migration
  def change
    create_table :financeiros do |t|
      t.integer :parcela
      t.date :data_emissa
      t.date :data_vencimento
      t.float :valor
      t.date :data_rebimento
      t.float :valor_recebido

      t.timestamps null: false
    end
  end
end
