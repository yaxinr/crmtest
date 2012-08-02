require 'test_helper'

class CrmContactsControllerTest < ActionController::TestCase
  setup do
    @crm_contact = crm_contacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:crm_contacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create crm_contact" do
    assert_difference('CrmContact.count') do
      post :create, crm_contact: { company_id: @crm_contact.company_id, company_name: @crm_contact.company_name, first_name: @crm_contact.first_name, industry: @crm_contact.industry, is_company: @crm_contact.is_company, last_name: @crm_contact.last_name, notes: @crm_contact.notes, status_id: @crm_contact.status_id, tenant: @crm_contact.tenant, title: @crm_contact.title }
    end

    assert_redirected_to crm_contact_path(assigns(:crm_contact))
  end

  test "should show crm_contact" do
    get :show, id: @crm_contact
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @crm_contact
    assert_response :success
  end

  test "should update crm_contact" do
    put :update, id: @crm_contact, crm_contact: { company_id: @crm_contact.company_id, company_name: @crm_contact.company_name, first_name: @crm_contact.first_name, industry: @crm_contact.industry, is_company: @crm_contact.is_company, last_name: @crm_contact.last_name, notes: @crm_contact.notes, status_id: @crm_contact.status_id, tenant: @crm_contact.tenant, title: @crm_contact.title }
    assert_redirected_to crm_contact_path(assigns(:crm_contact))
  end

  test "should destroy crm_contact" do
    assert_difference('CrmContact.count', -1) do
      delete :destroy, id: @crm_contact
    end

    assert_redirected_to crm_contacts_path
  end
end
