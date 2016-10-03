require 'test_helper'

class RoleMenusControllerTest < ActionController::TestCase
  setup do
    @role_menu = role_menus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:role_menus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create role_menu" do
    assert_difference('RoleMenu.count') do
      post :create, role_menu: { is_used: @role_menu.is_used, menu_id: @role_menu.menu_id, name: @role_menu.name, role_id: @role_menu.role_id }
    end

    assert_redirected_to role_menu_path(assigns(:role_menu))
  end

  test "should show role_menu" do
    get :show, id: @role_menu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @role_menu
    assert_response :success
  end

  test "should update role_menu" do
    patch :update, id: @role_menu, role_menu: { is_used: @role_menu.is_used, menu_id: @role_menu.menu_id, name: @role_menu.name, role_id: @role_menu.role_id }
    assert_redirected_to role_menu_path(assigns(:role_menu))
  end

  test "should destroy role_menu" do
    assert_difference('RoleMenu.count', -1) do
      delete :destroy, id: @role_menu
    end

    assert_redirected_to role_menus_path
  end
end
