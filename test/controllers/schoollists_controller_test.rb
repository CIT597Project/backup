require 'test_helper'

class SchoollistsControllerTest < ActionController::TestCase
  setup do
    @schoollist = schoollists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:schoollists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create schoollist" do
    assert_difference('Schoollist.count') do
      post :create, schoollist: { comment: @schoollist.comment, name: @schoollist.name }
    end

    assert_redirected_to schoollist_path(assigns(:schoollist))
  end

  test "should show schoollist" do
    get :show, id: @schoollist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @schoollist
    assert_response :success
  end

  test "should update schoollist" do
    patch :update, id: @schoollist, schoollist: { comment: @schoollist.comment, name: @schoollist.name }
    assert_redirected_to schoollist_path(assigns(:schoollist))
  end

  test "should destroy schoollist" do
    assert_difference('Schoollist.count', -1) do
      delete :destroy, id: @schoollist
    end

    assert_redirected_to schoollists_path
  end
end
