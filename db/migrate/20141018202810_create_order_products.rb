class CreateOrderProducts < ActiveRecord::Migration
  def change
    create_table :order_products do |t|
      t.datetime :fechaEmision
      t.datetime :fechaVencimiento

      t.timestamps null: false
    end
  end
end
