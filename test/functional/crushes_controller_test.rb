require 'test_helper'

class CrushesControllerTest < ActionController::TestCase
  setup do
    @crush = crushes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:crushes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create crush" do
    assert_difference('Crush.count') do
      post :create, crush: { crush: @crush.crush, user: @crush.user }
    end

    assert_redirected_to crush_path(assigns(:crush))
  end

  test "should show crush" do
    get :show, id: @crush
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @crush
    assert_response :success
  end

  test "should update crush" do
    put :update, id: @crush, crush: { crush: @crush.crush, user: @crush.user }
    assert_redirected_to crush_path(assigns(:crush))
  end

  test "should destroy crush" do
    assert_difference('Crush.count', -1) do
      delete :destroy, id: @crush
    end

    assert_redirected_to crushes_path
  end
end
