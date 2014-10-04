class Product < ActiveRecord::Base
  attr_accessible :marca, :modelo, :nombre, :precio
end
