class CreateEmpresas < ActiveRecord::Migration
  def change
    create_table :empresas do |t|
      t.string :razsocial
      t.string :cnpj
      t.string :fantasia
      t.date :data_contrato
      t.date :data_vencimento
      t.string :token
      t.float :valor
      t.integer :status_id
      t.integer :tipo_id

      t.timestamps null: false
    end
  end
end
