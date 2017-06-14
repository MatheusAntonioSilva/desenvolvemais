require 'test_helper'

class TipoProjetosControllerTest < ActionController::TestCase
  setup do
    @tipo_projeto = tipo_projetos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_projetos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_projeto" do
    assert_difference('TipoProjeto.count') do
      post :create, tipo_projeto: { tipo: @tipo_projeto.tipo }
    end

    assert_redirected_to tipo_projeto_path(assigns(:tipo_projeto))
  end

  test "should show tipo_projeto" do
    get :show, id: @tipo_projeto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_projeto
    assert_response :success
  end

  test "should update tipo_projeto" do
    patch :update, id: @tipo_projeto, tipo_projeto: { tipo: @tipo_projeto.tipo }
    assert_redirected_to tipo_projeto_path(assigns(:tipo_projeto))
  end

  test "should destroy tipo_projeto" do
    assert_difference('TipoProjeto.count', -1) do
      delete :destroy, id: @tipo_projeto
    end

    assert_redirected_to tipo_projetos_path
  end
end
