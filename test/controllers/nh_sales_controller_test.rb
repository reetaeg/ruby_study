require 'test_helper'

class NhSalesControllerTest < ActionController::TestCase
  setup do
    @nh_sale = nh_sales(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nh_sales)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nh_sale" do
    assert_difference('NhSale.count') do
      post :create, nh_sale: { commission: @nh_sale.commission, commission_tax: @nh_sale.commission_tax, confirm_date: @nh_sale.confirm_date, delivery_number: @nh_sale.delivery_number, depart_code: @nh_sale.depart_code, depart_name: @nh_sale.depart_name, from_code: @nh_sale.from_code, from_name: @nh_sale.from_name, order_no: @nh_sale.order_no, product_code: @nh_sale.product_code, product_name: @nh_sale.product_name, product_size: @nh_sale.product_size, product_tax: @nh_sale.product_tax, purchase_amount: @nh_sale.purchase_amount, purchase_price: @nh_sale.purchase_price, purchase_tax: @nh_sale.purchase_tax, purchase_unit_price: @nh_sale.purchase_unit_price, sale_number: @nh_sale.sale_number, supply_price: @nh_sale.supply_price, supply_type: @nh_sale.supply_type, to_code: @nh_sale.to_code, to_name: @nh_sale.to_name }
    end

    assert_redirected_to nh_sale_path(assigns(:nh_sale))
  end

  test "should show nh_sale" do
    get :show, id: @nh_sale
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nh_sale
    assert_response :success
  end

  test "should update nh_sale" do
    patch :update, id: @nh_sale, nh_sale: { commission: @nh_sale.commission, commission_tax: @nh_sale.commission_tax, confirm_date: @nh_sale.confirm_date, delivery_number: @nh_sale.delivery_number, depart_code: @nh_sale.depart_code, depart_name: @nh_sale.depart_name, from_code: @nh_sale.from_code, from_name: @nh_sale.from_name, order_no: @nh_sale.order_no, product_code: @nh_sale.product_code, product_name: @nh_sale.product_name, product_size: @nh_sale.product_size, product_tax: @nh_sale.product_tax, purchase_amount: @nh_sale.purchase_amount, purchase_price: @nh_sale.purchase_price, purchase_tax: @nh_sale.purchase_tax, purchase_unit_price: @nh_sale.purchase_unit_price, sale_number: @nh_sale.sale_number, supply_price: @nh_sale.supply_price, supply_type: @nh_sale.supply_type, to_code: @nh_sale.to_code, to_name: @nh_sale.to_name }
    assert_redirected_to nh_sale_path(assigns(:nh_sale))
  end

  test "should destroy nh_sale" do
    assert_difference('NhSale.count', -1) do
      delete :destroy, id: @nh_sale
    end

    assert_redirected_to nh_sales_path
  end
end
