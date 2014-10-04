class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :nombre
      t.string :marca
      t.integer :precio
      t.string :modelo

      t.timestamps
    end
  end
end
