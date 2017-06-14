require 'test_helper'

class ParceirosControllerTest < ActionController::TestCase
  setup do
    @parceiro = parceiros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:parceiros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create parceiro" do
    assert_difference('Parceiro.count') do
      post :create, parceiro: { apelido: @parceiro.apelido, bairro: @parceiro.bairro, cep: @parceiro.cep, cidade: @parceiro.cidade, cliente: @parceiro.cliente, cpf_cnpj: @parceiro.cpf_cnpj, dt_nacimento: @parceiro.dt_nacimento, endereco: @parceiro.endereco, fisica_juridica: @parceiro.fisica_juridica, fornecedor: @parceiro.fornecedor, ibge: @parceiro.ibge, nome: @parceiro.nome, numero: @parceiro.numero, pais: @parceiro.pais, rg: @parceiro.rg, telefone: @parceiro.telefone, uf: @parceiro.uf }
    end

    assert_redirected_to parceiro_path(assigns(:parceiro))
  end

  test "should show parceiro" do
    get :show, id: @parceiro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @parceiro
    assert_response :success
  end

  test "should update parceiro" do
    patch :update, id: @parceiro, parceiro: { apelido: @parceiro.apelido, bairro: @parceiro.bairro, cep: @parceiro.cep, cidade: @parceiro.cidade, cliente: @parceiro.cliente, cpf_cnpj: @parceiro.cpf_cnpj, dt_nacimento: @parceiro.dt_nacimento, endereco: @parceiro.endereco, fisica_juridica: @parceiro.fisica_juridica, fornecedor: @parceiro.fornecedor, ibge: @parceiro.ibge, nome: @parceiro.nome, numero: @parceiro.numero, pais: @parceiro.pais, rg: @parceiro.rg, telefone: @parceiro.telefone, uf: @parceiro.uf }
    assert_redirected_to parceiro_path(assigns(:parceiro))
  end

  test "should destroy parceiro" do
    assert_difference('Parceiro.count', -1) do
      delete :destroy, id: @parceiro
    end

    assert_redirected_to parceiros_path
  end
end
