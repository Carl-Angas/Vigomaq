class Promocion < ActiveRecord::Base
  has_and_belongs_to_many :products
  has_and_belongs_to_many :users
  attr_accessible :nombre, :precio
end
