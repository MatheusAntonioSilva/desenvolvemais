require 'test_helper'

class IdeiaControllerTest < ActionController::TestCase
  setup do
    @ideium = ideia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ideia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ideium" do
    assert_difference('Ideium.count') do
      post :create, ideium: { descricao: @ideium.descricao, descricaocompleta: @ideium.descricaocompleta }
    end

    assert_redirected_to ideium_path(assigns(:ideium))
  end

  test "should show ideium" do
    get :show, id: @ideium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ideium
    assert_response :success
  end

  test "should update ideium" do
    patch :update, id: @ideium, ideium: { descricao: @ideium.descricao, descricaocompleta: @ideium.descricaocompleta }
    assert_redirected_to ideium_path(assigns(:ideium))
  end

  test "should destroy ideium" do
    assert_difference('Ideium.count', -1) do
      delete :destroy, id: @ideium
    end

    assert_redirected_to ideia_path
  end
end
