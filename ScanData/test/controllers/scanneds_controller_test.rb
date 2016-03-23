require 'test_helper'

class ScannedsControllerTest < ActionController::TestCase
  setup do
    @scanned = scanneds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scanneds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scanned" do
    assert_difference('Scanned.count') do
      post :create, scanned: {  }
    end

    assert_redirected_to scanned_path(assigns(:scanned))
  end

  test "should show scanned" do
    get :show, id: @scanned
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @scanned
    assert_response :success
  end

  test "should update scanned" do
    patch :update, id: @scanned, scanned: {  }
    assert_redirected_to scanned_path(assigns(:scanned))
  end

  test "should destroy scanned" do
    assert_difference('Scanned.count', -1) do
      delete :destroy, id: @scanned
    end

    assert_redirected_to scanneds_path
  end
end
