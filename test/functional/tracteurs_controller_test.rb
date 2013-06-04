require 'test_helper'

class TracteursControllerTest < ActionController::TestCase
  setup do
    @tracteur = tracteurs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tracteurs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tracteur" do
    assert_difference('Tracteur.count') do
      post :create, tracteur: {  }
    end

    assert_redirected_to tracteur_path(assigns(:tracteur))
  end

  test "should show tracteur" do
    get :show, id: @tracteur
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tracteur
    assert_response :success
  end

  test "should update tracteur" do
    put :update, id: @tracteur, tracteur: {  }
    assert_redirected_to tracteur_path(assigns(:tracteur))
  end

  test "should destroy tracteur" do
    assert_difference('Tracteur.count', -1) do
      delete :destroy, id: @tracteur
    end

    assert_redirected_to tracteurs_path
  end
end
