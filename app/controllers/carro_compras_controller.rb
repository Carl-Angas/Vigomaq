class CarroComprasController < ApplicationController

def agregar_carro_compras
	@prod = Product.find(params[:id_prod])
    @usr = User.find(current_user.id)

    #render :text => params[:id_prod]
    #@usr.products << @prod

    #redirect_to "/products"
	
end

end
