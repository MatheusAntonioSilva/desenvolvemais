require 'test_helper'

class ProdutoChavesControllerTest < ActionController::TestCase
  setup do
    @produto_chafe = produto_chaves(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:produto_chaves)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create produto_chafe" do
    assert_difference('ProdutoChave.count') do
      post :create, produto_chafe: {  }
    end

    assert_redirected_to produto_chafe_path(assigns(:produto_chafe))
  end

  test "should show produto_chafe" do
    get :show, id: @produto_chafe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @produto_chafe
    assert_response :success
  end

  test "should update produto_chafe" do
    patch :update, id: @produto_chafe, produto_chafe: {  }
    assert_redirected_to produto_chafe_path(assigns(:produto_chafe))
  end

  test "should destroy produto_chafe" do
    assert_difference('ProdutoChave.count', -1) do
      delete :destroy, id: @produto_chafe
    end

    assert_redirected_to produto_chaves_path
  end
end
