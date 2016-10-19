require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, product: { box_count: @product.box_count, caegory_id: @product.caegory_id, code: @product.code, description: @product.description, img_url: @product.img_url, name: @product.name, product_type: @product.product_type, purchase: @product.purchase, purchase_tax: @product.purchase_tax, size: @product.size, supply: @product.supply, supply_tax: @product.supply_tax, ta_count: @product.ta_count }
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    patch :update, id: @product, product: { box_count: @product.box_count, caegory_id: @product.caegory_id, code: @product.code, description: @product.description, img_url: @product.img_url, name: @product.name, product_type: @product.product_type, purchase: @product.purchase, purchase_tax: @product.purchase_tax, size: @product.size, supply: @product.supply, supply_tax: @product.supply_tax, ta_count: @product.ta_count }
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end
end
