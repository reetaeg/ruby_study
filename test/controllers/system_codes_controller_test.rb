require 'test_helper'

class SystemCodesControllerTest < ActionController::TestCase
  setup do
    @system_code = system_codes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:system_codes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create system_code" do
    assert_difference('SystemCode.count') do
      post :create, system_code: { code: @system_code.code, code_type: @system_code.code_type, description: @system_code.description, name: @system_code.name, system_code_id: @system_code.system_code_id }
    end

    assert_redirected_to system_code_path(assigns(:system_code))
  end

  test "should show system_code" do
    get :show, id: @system_code
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @system_code
    assert_response :success
  end

  test "should update system_code" do
    patch :update, id: @system_code, system_code: { code: @system_code.code, code_type: @system_code.code_type, description: @system_code.description, name: @system_code.name, system_code_id: @system_code.system_code_id }
    assert_redirected_to system_code_path(assigns(:system_code))
  end

  test "should destroy system_code" do
    assert_difference('SystemCode.count', -1) do
      delete :destroy, id: @system_code
    end

    assert_redirected_to system_codes_path
  end
end
