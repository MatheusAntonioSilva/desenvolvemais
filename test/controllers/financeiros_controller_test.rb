require 'test_helper'

class FinanceirosControllerTest < ActionController::TestCase
  setup do
    @financeiro = financeiros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:financeiros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create financeiro" do
    assert_difference('Financeiro.count') do
      post :create, financeiro: { data_emissa: @financeiro.data_emissa, data_rebimento: @financeiro.data_rebimento, data_vencimento: @financeiro.data_vencimento, parcela: @financeiro.parcela, valor: @financeiro.valor, valor_recebido: @financeiro.valor_recebido }
    end

    assert_redirected_to financeiro_path(assigns(:financeiro))
  end

  test "should show financeiro" do
    get :show, id: @financeiro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @financeiro
    assert_response :success
  end

  test "should update financeiro" do
    patch :update, id: @financeiro, financeiro: { data_emissa: @financeiro.data_emissa, data_rebimento: @financeiro.data_rebimento, data_vencimento: @financeiro.data_vencimento, parcela: @financeiro.parcela, valor: @financeiro.valor, valor_recebido: @financeiro.valor_recebido }
    assert_redirected_to financeiro_path(assigns(:financeiro))
  end

  test "should destroy financeiro" do
    assert_difference('Financeiro.count', -1) do
      delete :destroy, id: @financeiro
    end

    assert_redirected_to financeiros_path
  end
end
