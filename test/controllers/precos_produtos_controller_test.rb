require 'test_helper'

class PrecosProdutosControllerTest < ActionController::TestCase
  setup do
    @precos_produto = precos_produtos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:precos_produtos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create precos_produto" do
    assert_difference('PrecosProduto.count') do
      post :create, precos_produto: { margem_bruta: @precos_produto.margem_bruta, preco_custo: @precos_produto.preco_custo, preco_venda: @precos_produto.preco_venda }
    end

    assert_redirected_to precos_produto_path(assigns(:precos_produto))
  end

  test "should show precos_produto" do
    get :show, id: @precos_produto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @precos_produto
    assert_response :success
  end

  test "should update precos_produto" do
    patch :update, id: @precos_produto, precos_produto: { margem_bruta: @precos_produto.margem_bruta, preco_custo: @precos_produto.preco_custo, preco_venda: @precos_produto.preco_venda }
    assert_redirected_to precos_produto_path(assigns(:precos_produto))
  end

  test "should destroy precos_produto" do
    assert_difference('PrecosProduto.count', -1) do
      delete :destroy, id: @precos_produto
    end

    assert_redirected_to precos_produtos_path
  end
end
