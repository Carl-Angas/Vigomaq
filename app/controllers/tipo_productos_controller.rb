class TipoProductosController < ApplicationController
  before_action :set_tipo_producto, only: [:show, :edit, :update, :destroy]
    respond_to :html, :xml, :json 


  def index
    @tipo_productos = TipoProducto.all
    respond_with(@tipo_productos)
  end

  def show
    respond_with(@tipo_producto)
  end

  def new
    @tipo_producto = TipoProducto.new
    respond_with(@tipo_producto)
  end

  def edit
  end

  def create
    @tipo_producto = TipoProducto.new(tipo_producto_params)
    @tipo_producto.save
    respond_with(@tipo_producto)
  end

  def update
    @tipo_producto.update(tipo_producto_params)
    respond_with(@tipo_producto)
  end

  def destroy
    @tipo_producto.destroy
    respond_with(@tipo_producto)
  end

  private
    def set_tipo_producto
      @tipo_producto = TipoProducto.find(params[:id])
    end

    def tipo_producto_params
      params.require(:tipo_producto).permit(:tipo)
    end
end
