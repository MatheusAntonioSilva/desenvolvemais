class CreateTipoUsuarios < ActiveRecord::Migration
  def change
    create_table :tipo_usuarios do |t|
      t.string :descricao

      t.timestamps null: false
    end
  end
end
