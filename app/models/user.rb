class User < ActiveRecord::Base
  attr_accessible :apellidoMat, :apellidoPat, :ciudad, :direccion, :nombre, :telefono
end
 