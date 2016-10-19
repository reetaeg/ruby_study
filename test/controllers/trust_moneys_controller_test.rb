require 'test_helper'

class TrustMoneysControllerTest < ActionController::TestCase
  setup do
    @trust_money = trust_moneys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trust_moneys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trust_money" do
    assert_difference('TrustMoney.count') do
      post :create, trust_money: { agency_id: @trust_money.agency_id, etc: @trust_money.etc, source_type: @trust_money.source_type }
    end

    assert_redirected_to trust_money_path(assigns(:trust_money))
  end

  test "should show trust_money" do
    get :show, id: @trust_money
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trust_money
    assert_response :success
  end

  test "should update trust_money" do
    patch :update, id: @trust_money, trust_money: { agency_id: @trust_money.agency_id, etc: @trust_money.etc, source_type: @trust_money.source_type }
    assert_redirected_to trust_money_path(assigns(:trust_money))
  end

  test "should destroy trust_money" do
    assert_difference('TrustMoney.count', -1) do
      delete :destroy, id: @trust_money
    end

    assert_redirected_to trust_moneys_path
  end
end
