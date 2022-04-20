require 'test_helper'

class StatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @status = statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:statuses)
  end

  test "debe ser redirigido cuando no ha iniciado sesion" do
    get :new
    assert_response :redirect
    assert_redirected_to new_user_session_path

  end

  test "debe inisiar sesion para hacer un post" do
    post :create, status: {contenido: "Hola Mundo"}
    assert_response :redirect
    assert_redirected_to new_user_session_path
  end

  test "deberia mostrar la nueva pagina cuando inicio sesion" do
    sign_in users(:ojala)
    get :new
    assert_response :success
  end

  test "should create status" do
    sign_in users(:ojala)
    assert_difference('Status.count') do
      post statuses_url, params: { status: { content: @status.content} }
    end

    assert_redirected_to status_url(Status.last)
  end

  test "should show status" do
    get status_url(@status)
    assert_response :success
  end

  test "should get edit" do
    get edit_status_url(@status)
    assert_response :success
  end

  test "should update status" do
    patch status_url(@status), params: { status: { content: @status.content} }
    assert_redirected_to status_url(@status)
  end

  test "should destroy status" do
    assert_difference('Status.count', -1) do
      delete status_url(@status)
    end

    assert_redirected_to statuses_url
  end
end
