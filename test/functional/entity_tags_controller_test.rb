require 'test_helper'

class EntityTagsControllerTest < ActionController::TestCase
  setup do
    @entity_tag = entity_tags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:entity_tags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create entity_tag" do
    assert_difference('EntityTag.count') do
      post :create, entity_tag: { entity: @entity_tag.entity, entity_type: @entity_tag.entity_type, tag: @entity_tag.tag }
    end

    assert_redirected_to entity_tag_path(assigns(:entity_tag))
  end

  test "should show entity_tag" do
    get :show, id: @entity_tag
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @entity_tag
    assert_response :success
  end

  test "should update entity_tag" do
    put :update, id: @entity_tag, entity_tag: { entity: @entity_tag.entity, entity_type: @entity_tag.entity_type, tag: @entity_tag.tag }
    assert_redirected_to entity_tag_path(assigns(:entity_tag))
  end

  test "should destroy entity_tag" do
    assert_difference('EntityTag.count', -1) do
      delete :destroy, id: @entity_tag
    end

    assert_redirected_to entity_tags_path
  end
end
