require 'test_helper'

class CustomerContactsControllerTest < ActionController::TestCase
  setup do
    @customer_contact = customer_contacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customer_contacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customer_contact" do
    assert_difference('CustomerContact.count') do
      post :create, customer_contact: { contact_method: @customer_contact.contact_method, customer_id: @customer_contact.customer_id, date_contacted: @customer_contact.date_contacted, notes: @customer_contact.notes }
    end

    assert_redirected_to customer_contact_path(assigns(:customer_contact))
  end

  test "should show customer_contact" do
    get :show, id: @customer_contact
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customer_contact
    assert_response :success
  end

  test "should update customer_contact" do
    patch :update, id: @customer_contact, customer_contact: { contact_method: @customer_contact.contact_method, customer_id: @customer_contact.customer_id, date_contacted: @customer_contact.date_contacted, notes: @customer_contact.notes }
    assert_redirected_to customer_contact_path(assigns(:customer_contact))
  end

  test "should destroy customer_contact" do
    assert_difference('CustomerContact.count', -1) do
      delete :destroy, id: @customer_contact
    end

    assert_redirected_to customer_contacts_path
  end
end
