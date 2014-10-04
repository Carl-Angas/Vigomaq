class CreatePromocions < ActiveRecord::Migration
  def change
    create_table :promocions do |t|
      t.string :nombre
      t.integer :precio

      t.timestamps
    end
  end
end
