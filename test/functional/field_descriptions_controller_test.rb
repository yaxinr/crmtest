require 'test_helper'

class FieldDescriptionsControllerTest < ActionController::TestCase
  setup do
    @field_description = field_descriptions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:field_descriptions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create field_description" do
    assert_difference('FieldDescription.count') do
      post :create, field_description: { entity_type: @field_description.entity_type, label: @field_description.label, mask: @field_description.mask, sort_order: @field_description.sort_order, tenant: @field_description.tenant, type: @field_description.type }
    end

    assert_redirected_to field_description_path(assigns(:field_description))
  end

  test "should show field_description" do
    get :show, id: @field_description
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @field_description
    assert_response :success
  end

  test "should update field_description" do
    put :update, id: @field_description, field_description: { entity_type: @field_description.entity_type, label: @field_description.label, mask: @field_description.mask, sort_order: @field_description.sort_order, tenant: @field_description.tenant, type: @field_description.type }
    assert_redirected_to field_description_path(assigns(:field_description))
  end

  test "should destroy field_description" do
    assert_difference('FieldDescription.count', -1) do
      delete :destroy, id: @field_description
    end

    assert_redirected_to field_descriptions_path
  end
end
