require 'test_helper'

class TiendaControllerTest < ActionController::TestCase
  test "should get Arriendo" do
    get :Arriendo
    assert_response :success
  end

  test "should get Venta" do
    get :Venta
    assert_response :success
  end

end
