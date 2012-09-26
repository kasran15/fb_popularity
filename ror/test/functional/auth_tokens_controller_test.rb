require 'test_helper'

class AuthTokensControllerTest < ActionController::TestCase
  setup do
    @auth_token = auth_tokens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:auth_tokens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create auth_token" do
    assert_difference('AuthToken.count') do
      post :create, auth_token: { fbId: @auth_token.fbId, token: @auth_token.token }
    end

    assert_redirected_to auth_token_path(assigns(:auth_token))
  end

  test "should show auth_token" do
    get :show, id: @auth_token
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @auth_token
    assert_response :success
  end

  test "should update auth_token" do
    put :update, id: @auth_token, auth_token: { fbId: @auth_token.fbId, token: @auth_token.token }
    assert_redirected_to auth_token_path(assigns(:auth_token))
  end

  test "should destroy auth_token" do
    assert_difference('AuthToken.count', -1) do
      delete :destroy, id: @auth_token
    end

    assert_redirected_to auth_tokens_path
  end
end
