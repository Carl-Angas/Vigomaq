class CreateMarcas < ActiveRecord::Migration
  def change
    create_table :marcas do |t|
      t.string :marca

      t.timestamps null: false
    end
  end
end
