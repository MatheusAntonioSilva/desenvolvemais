require 'test_helper'

class PlataformasControllerTest < ActionController::TestCase
  setup do
    @plataforma = plataformas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:plataformas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create plataforma" do
    assert_difference('Plataforma.count') do
      post :create, plataforma: { plataforma: @plataforma.plataforma }
    end

    assert_redirected_to plataforma_path(assigns(:plataforma))
  end

  test "should show plataforma" do
    get :show, id: @plataforma
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @plataforma
    assert_response :success
  end

  test "should update plataforma" do
    patch :update, id: @plataforma, plataforma: { plataforma: @plataforma.plataforma }
    assert_redirected_to plataforma_path(assigns(:plataforma))
  end

  test "should destroy plataforma" do
    assert_difference('Plataforma.count', -1) do
      delete :destroy, id: @plataforma
    end

    assert_redirected_to plataformas_path
  end
end
