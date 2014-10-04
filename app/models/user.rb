class User < ActiveRecord::Base
  has_and_belongs_to_many :products
  has_and_belongs_to_many :promocions
  attr_accessible :apellidoMat, :apellidoPat, :ciudad, :direccion, :nombre, :telefono
end
 