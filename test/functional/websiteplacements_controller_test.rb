require 'test_helper'

class WebsiteplacementsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:websiteplacements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create websiteplacement" do
    assert_difference('Websiteplacement.count') do
      post :create, :websiteplacement => { }
    end

    assert_redirected_to websiteplacement_path(assigns(:websiteplacement))
  end

  test "should show websiteplacement" do
    get :show, :id => websiteplacements(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => websiteplacements(:one).id
    assert_response :success
  end

  test "should update websiteplacement" do
    put :update, :id => websiteplacements(:one).id, :websiteplacement => { }
    assert_redirected_to websiteplacement_path(assigns(:websiteplacement))
  end

  test "should destroy websiteplacement" do
    assert_difference('Websiteplacement.count', -1) do
      delete :destroy, :id => websiteplacements(:one).id
    end

    assert_redirected_to websiteplacements_path
  end
end
