require 'test_helper'

class RutasPersonalizadasTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "el /login abre la página de inicio de sesion" do
    get '/iniciarSesion'
    assert_response :success
  end

  test "el /logout abre la página de cerrar de sesion" do
    get '/cerrarSesion'
    assert_response :success
    assert_redirected_to '/'
  end

  test "el /registro abre la página de registrar usuario" do
    get '/registrar'
    assert_response :success
  end


end
