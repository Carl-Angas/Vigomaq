class AgregarTipoUsuario < ActiveRecord::Migration
  def change
  	add_column :users, :tipo, :integer, default: 1	
  end
end
