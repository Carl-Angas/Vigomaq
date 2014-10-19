class AgregarAtributosUser < ActiveRecord::Migration
  def change
  	add_column :users, :nombre, :string
  	add_column :users, :apellidoPaterno, :string
  	add_column :users, :apellidoMaterno, :string
  	add_column :users, :telefono, :string
  	add_column :users, :direccion, :string
  	add_column :users, :ciudad, :string
  	add_column :users, :tipo, :string
  end
end
