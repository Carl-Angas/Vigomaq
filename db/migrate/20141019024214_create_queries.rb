class CreateQueries < ActiveRecord::Migration
  def change
    create_table :queries do |t|
      t.string :nombre
      t.string :email
      t.text :consulta
      t.text :respuesta

      t.timestamps null: false
    end
  end
end
