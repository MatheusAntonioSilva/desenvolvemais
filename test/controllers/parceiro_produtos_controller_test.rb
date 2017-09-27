require 'test_helper'

class ParceiroProdutosControllerTest < ActionController::TestCase
  setup do
    @parceiro_produto = parceiro_produtos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:parceiro_produtos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create parceiro_produto" do
    assert_difference('ParceiroProduto.count') do
      post :create, parceiro_produto: { parceiro_id: @parceiro_produto.parceiro_id, produto_id: @parceiro_produto.produto_id }
    end

    assert_redirected_to parceiro_produto_path(assigns(:parceiro_produto))
  end

  test "should show parceiro_produto" do
    get :show, id: @parceiro_produto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @parceiro_produto
    assert_response :success
  end

  test "should update parceiro_produto" do
    patch :update, id: @parceiro_produto, parceiro_produto: { parceiro_id: @parceiro_produto.parceiro_id, produto_id: @parceiro_produto.produto_id }
    assert_redirected_to parceiro_produto_path(assigns(:parceiro_produto))
  end

  test "should destroy parceiro_produto" do
    assert_difference('ParceiroProduto.count', -1) do
      delete :destroy, id: @parceiro_produto
    end

    assert_redirected_to parceiro_produtos_path
  end
end
