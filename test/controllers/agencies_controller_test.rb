require 'test_helper'

class AgenciesControllerTest < ActionController::TestCase
  setup do
    @agency = agencies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:agencies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create agency" do
    assert_difference('Agency.count') do
      post :create, agency: { agency_type: @agency.agency_type, area: @agency.area, biz_number: @agency.biz_number, edi_code: @agency.edi_code, email: @agency.email, is_used: @agency.is_used, name: @agency.name, owner_name: @agency.owner_name, phone: @agency.phone }
    end

    assert_redirected_to agency_path(assigns(:agency))
  end

  test "should show agency" do
    get :show, id: @agency
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @agency
    assert_response :success
  end

  test "should update agency" do
    patch :update, id: @agency, agency: { agency_type: @agency.agency_type, area: @agency.area, biz_number: @agency.biz_number, edi_code: @agency.edi_code, email: @agency.email, is_used: @agency.is_used, name: @agency.name, owner_name: @agency.owner_name, phone: @agency.phone }
    assert_redirected_to agency_path(assigns(:agency))
  end

  test "should destroy agency" do
    assert_difference('Agency.count', -1) do
      delete :destroy, id: @agency
    end

    assert_redirected_to agencies_path
  end
end
