class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :nombre
      t.string :modelo
      t.string :marca
      t.integer :precio
      t.string :categoria
      t.string :tipo

      t.timestamps null: false
    end

    add_attachment :products, :image
  end
end
