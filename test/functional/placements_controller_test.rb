require 'test_helper'

class PlacementsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:placements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create placement" do
    assert_difference('Placement.count') do
      post :create, :placement => { }
    end

    assert_redirected_to placement_path(assigns(:placement))
  end

  test "should show placement" do
    get :show, :id => placements(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => placements(:one).id
    assert_response :success
  end

  test "should update placement" do
    put :update, :id => placements(:one).id, :placement => { }
    assert_redirected_to placement_path(assigns(:placement))
  end

  test "should destroy placement" do
    assert_difference('Placement.count', -1) do
      delete :destroy, :id => placements(:one).id
    end

    assert_redirected_to placements_path
  end
end
