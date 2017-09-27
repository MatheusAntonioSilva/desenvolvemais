require 'test_helper'

class VisitanteinteressadosControllerTest < ActionController::TestCase
  setup do
    @visitanteinteressado = visitanteinteressados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:visitanteinteressados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create visitanteinteressado" do
    assert_difference('Visitanteinteressado.count') do
      post :create, visitanteinteressado: { name: @visitanteinteressado.name }
    end

    assert_redirected_to visitanteinteressado_path(assigns(:visitanteinteressado))
  end

  test "should show visitanteinteressado" do
    get :show, id: @visitanteinteressado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @visitanteinteressado
    assert_response :success
  end

  test "should update visitanteinteressado" do
    patch :update, id: @visitanteinteressado, visitanteinteressado: { name: @visitanteinteressado.name }
    assert_redirected_to visitanteinteressado_path(assigns(:visitanteinteressado))
  end

  test "should destroy visitanteinteressado" do
    assert_difference('Visitanteinteressado.count', -1) do
      delete :destroy, id: @visitanteinteressado
    end

    assert_redirected_to visitanteinteressados_path
  end
end
