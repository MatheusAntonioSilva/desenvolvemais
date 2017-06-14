require 'test_helper'

class SubgruposControllerTest < ActionController::TestCase
  setup do
    @subgrupo = subgrupos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subgrupos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subgrupo" do
    assert_difference('Subgrupo.count') do
      post :create, subgrupo: { nome: @subgrupo.nome }
    end

    assert_redirected_to subgrupo_path(assigns(:subgrupo))
  end

  test "should show subgrupo" do
    get :show, id: @subgrupo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subgrupo
    assert_response :success
  end

  test "should update subgrupo" do
    patch :update, id: @subgrupo, subgrupo: { nome: @subgrupo.nome }
    assert_redirected_to subgrupo_path(assigns(:subgrupo))
  end

  test "should destroy subgrupo" do
    assert_difference('Subgrupo.count', -1) do
      delete :destroy, id: @subgrupo
    end

    assert_redirected_to subgrupos_path
  end
end
