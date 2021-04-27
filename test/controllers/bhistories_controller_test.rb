require 'test_helper'

class BhistoriesControllerTest < ActionController::TestCase
  setup do
    @bhistory = bhistories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bhistories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bhistory" do
    assert_difference('Bhistory.count') do
      post :create, bhistory: { acontent: @bhistory.acontent, amonth: @bhistory.amonth, ayear: @bhistory.ayear, etc1: @bhistory.etc1, etc2: @bhistory.etc2, etc3: @bhistory.etc3, uid: @bhistory.uid, uipaddr: @bhistory.uipaddr }
    end

    assert_redirected_to bhistory_path(assigns(:bhistory))
  end

  test "should show bhistory" do
    get :show, id: @bhistory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bhistory
    assert_response :success
  end

  test "should update bhistory" do
    patch :update, id: @bhistory, bhistory: { acontent: @bhistory.acontent, amonth: @bhistory.amonth, ayear: @bhistory.ayear, etc1: @bhistory.etc1, etc2: @bhistory.etc2, etc3: @bhistory.etc3, uid: @bhistory.uid, uipaddr: @bhistory.uipaddr }
    assert_redirected_to bhistory_path(assigns(:bhistory))
  end

  test "should destroy bhistory" do
    assert_difference('Bhistory.count', -1) do
      delete :destroy, id: @bhistory
    end

    assert_redirected_to bhistories_path
  end
end
