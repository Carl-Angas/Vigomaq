class Product < ActiveRecord::Base
  has_and_belongs_to_many: promocions
  has_and_belongs_to_many: users
  attr_accessible :marca, :modelo, :nombre, :precio
end
