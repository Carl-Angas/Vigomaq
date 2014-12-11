class CarroComprasController < ApplicationController

	def agregar_carro_compras
		@prod = Product.find(params[:id_prod])
	    @usr = User.find(current_user.id)

	    #render :text => params[:id_prod]
	    @usr.products << @prod

	    redirect_to "/carro_compras"
		
	end

	def index
		@carroA = User.find(current_user.id).products.where(:tipo => "Arriendo")
		@carroV = User.find(current_user.id).products.where(:tipo => "Venta")
		@totalA = @carroA.sum(:precio)
		@totalV = @carroV.sum(:precio)
		@total = User.find(current_user.id).products.sum(:precio)
	end

	def quitar_producto
		#render :text => params[:id_prod]
		current_user.products.delete(Product.where(:id => params[:id_prod]))
		redirect_to "/carro_compras"
	end
end
