require 'test_helper'

class FieldValuesControllerTest < ActionController::TestCase
  setup do
    @field_value = field_values(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:field_values)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create field_value" do
    assert_difference('FieldValue.count') do
      post :create, field_value: { entity: @field_value.entity, entity_type: @field_value.entity_type, field: @field_value.field, tenant: @field_value.tenant, value: @field_value.value }
    end

    assert_redirected_to field_value_path(assigns(:field_value))
  end

  test "should show field_value" do
    get :show, id: @field_value
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @field_value
    assert_response :success
  end

  test "should update field_value" do
    put :update, id: @field_value, field_value: { entity: @field_value.entity, entity_type: @field_value.entity_type, field: @field_value.field, tenant: @field_value.tenant, value: @field_value.value }
    assert_redirected_to field_value_path(assigns(:field_value))
  end

  test "should destroy field_value" do
    assert_difference('FieldValue.count', -1) do
      delete :destroy, id: @field_value
    end

    assert_redirected_to field_values_path
  end
end
