class InicioController < ApplicationController
	respond_to :html, :xml, :json 

  def index
  	 #@products = Product.where("name LIKE ?", "%#{params[:search]}%")
    if user_signed_in? and  current_user.tipo == 2
      redirect_to "/admin"
    else
    end
  end

  #def prueba
    #@products = Product.all
   # respond_with(@products)

  #end

  def empresa
  end
  
end
