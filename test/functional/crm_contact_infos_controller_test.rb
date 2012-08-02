require 'test_helper'

class CrmContactInfosControllerTest < ActionController::TestCase
  setup do
    @crm_contact_info = crm_contact_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:crm_contact_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create crm_contact_info" do
    assert_difference('CrmContactInfo.count') do
      post :create, crm_contact_info: { category: @crm_contact_info.category, contact: @crm_contact_info.contact, data: @crm_contact_info.data, is_primary: @crm_contact_info.is_primary, type: @crm_contact_info.type }
    end

    assert_redirected_to crm_contact_info_path(assigns(:crm_contact_info))
  end

  test "should show crm_contact_info" do
    get :show, id: @crm_contact_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @crm_contact_info
    assert_response :success
  end

  test "should update crm_contact_info" do
    put :update, id: @crm_contact_info, crm_contact_info: { category: @crm_contact_info.category, contact: @crm_contact_info.contact, data: @crm_contact_info.data, is_primary: @crm_contact_info.is_primary, type: @crm_contact_info.type }
    assert_redirected_to crm_contact_info_path(assigns(:crm_contact_info))
  end

  test "should destroy crm_contact_info" do
    assert_difference('CrmContactInfo.count', -1) do
      delete :destroy, id: @crm_contact_info
    end

    assert_redirected_to crm_contact_infos_path
  end
end
