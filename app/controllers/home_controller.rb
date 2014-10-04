class HomeController < ApplicationController
  def index
  
  	@producto = Product.all

  
  end
end
