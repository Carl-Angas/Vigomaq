class TiendaController < ApplicationController
	before_filter :authenticate_user!
  def Arriendo
  	@arriendo = Product.where(:tipo => "Arriendo")
  end

  def index
  	
  end

  def Venta
  	@venta = Product.where(:tipo => "Venta")
  end
end
