class CreateTipoProductos < ActiveRecord::Migration
  def change
    create_table :tipo_productos do |t|
      t.string :tipo

      t.timestamps null: false
    end
  end
end
