class InicioController < ApplicationController
	respond_to :html, :xml, :json 

  def index
  	 @products = Product.where("name LIKE ?", "%#{params[:search]}%") 
  end

  def prueba
    @products = Product.all
    respond_with(@products)

  end

  def empresa
  end
  
end
