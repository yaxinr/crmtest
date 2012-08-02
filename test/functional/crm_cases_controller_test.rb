require 'test_helper'

class CrmCasesControllerTest < ActionController::TestCase
  setup do
    @crm_case = crm_cases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:crm_cases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create crm_case" do
    assert_difference('CrmCase.count') do
      post :create, crm_case: { isClosed: @crm_case.isClosed, tenant: @crm_case.tenant, title: @crm_case.title }
    end

    assert_redirected_to crm_case_path(assigns(:crm_case))
  end

  test "should show crm_case" do
    get :show, id: @crm_case
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @crm_case
    assert_response :success
  end

  test "should update crm_case" do
    put :update, id: @crm_case, crm_case: { isClosed: @crm_case.isClosed, tenant: @crm_case.tenant, title: @crm_case.title }
    assert_redirected_to crm_case_path(assigns(:crm_case))
  end

  test "should destroy crm_case" do
    assert_difference('CrmCase.count', -1) do
      delete :destroy, id: @crm_case
    end

    assert_redirected_to crm_cases_path
  end
end
