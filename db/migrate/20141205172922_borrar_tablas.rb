class BorrarTablas < ActiveRecord::Migration
  def up
    drop_table :categories
    drop_table :cities
    drop_table :iniciandos
    drop_table :model_tables
    drop_table :product_types
    drop_table :promocions
    drop_table :pruebas
    drop_table :queries
    drop_table :trademarks
    drop_table :user_types


  end
  def down
  	
  end
end
