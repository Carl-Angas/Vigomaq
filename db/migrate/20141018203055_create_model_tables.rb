class CreateModelTables < ActiveRecord::Migration
  def change
    create_table :model_tables do |t|
      t.string :modelo

      t.timestamps null: false
    end
  end
end
