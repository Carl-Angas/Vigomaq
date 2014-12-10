class CrearTablaProductoUsuario < ActiveRecord::Migration
  def change
    create_table :products_users, :id => false do |t|
      t.references :product
      t.references :user
    end
    add_index :products_users, :product_id
    add_index :products_users, :user_id
  end 
end
