require 'test_helper'

class PalavrasChavesControllerTest < ActionController::TestCase
  setup do
    @palavras_chafe = palavras_chaves(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:palavras_chaves)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create palavras_chafe" do
    assert_difference('PalavrasChafe.count') do
      post :create, palavras_chafe: { palavra: @palavras_chafe.palavra }
    end

    assert_redirected_to palavras_chafe_path(assigns(:palavras_chafe))
  end

  test "should show palavras_chafe" do
    get :show, id: @palavras_chafe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @palavras_chafe
    assert_response :success
  end

  test "should update palavras_chafe" do
    patch :update, id: @palavras_chafe, palavras_chafe: { palavra: @palavras_chafe.palavra }
    assert_redirected_to palavras_chafe_path(assigns(:palavras_chafe))
  end

  test "should destroy palavras_chafe" do
    assert_difference('PalavrasChafe.count', -1) do
      delete :destroy, id: @palavras_chafe
    end

    assert_redirected_to palavras_chaves_path
  end
end
