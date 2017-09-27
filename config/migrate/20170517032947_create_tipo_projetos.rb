class CreateTipoProjetos < ActiveRecord::Migration
  def change
    create_table :tipo_projetos do |t|
      t.string :tipo

      t.timestamps null: false
    end
  end
end
