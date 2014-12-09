class AdminController < ApplicationController
  before_filter :authenticate_user!
  respond_to :html

  def index
  end

  def agregar_tipo_producto
  	@tipo = TipoProducto.new
  	respond_with(@tipo)
  end

  private

    def tipoproducto_params
      params.require(:tipo).permit(:tipo)
    end

end
