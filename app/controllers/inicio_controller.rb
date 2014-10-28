class InicioController < ApplicationController
	respond_to :html, :xml, :json 

  def index
  end

  def prueba
    @products = Product.all
    respond_with(@products)

  end
  
end
