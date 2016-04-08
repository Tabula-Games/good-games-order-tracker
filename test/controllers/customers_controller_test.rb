require 'test_helper'

class CustomersControllerTest < ActionController::TestCase
  setup do
    @customer = customers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customer" do
    assert_difference('Customer.count') do
      post :create, customer: { address_line1: @customer.address_line1, address_line2: @customer.address_line2, credit_limit: @customer.credit_limit, email: @customer.email, home_phone: @customer.home_phone, mobile_phone: @customer.mobile_phone, name: @customer.name, post_code: @customer.post_code, state: @customer.state, suburb: @customer.suburb }
    end

    assert_redirected_to customer_path(assigns(:customer))
  end

  test "should show customer" do
    get :show, id: @customer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customer
    assert_response :success
  end

  test "should update customer" do
    patch :update, id: @customer, customer: { address_line1: @customer.address_line1, address_line2: @customer.address_line2, credit_limit: @customer.credit_limit, email: @customer.email, home_phone: @customer.home_phone, mobile_phone: @customer.mobile_phone, name: @customer.name, post_code: @customer.post_code, state: @customer.state, suburb: @customer.suburb }
    assert_redirected_to customer_path(assigns(:customer))
  end

  test "should destroy customer" do
    assert_difference('Customer.count', -1) do
      delete :destroy, id: @customer
    end

    assert_redirected_to customers_path
  end
end
