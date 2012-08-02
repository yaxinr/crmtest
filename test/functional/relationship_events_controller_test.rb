require 'test_helper'

class RelationshipEventsControllerTest < ActionController::TestCase
  setup do
    @relationship_event = relationship_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:relationship_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create relationship_event" do
    assert_difference('RelationshipEvent.count') do
      post :create, relationship_event: { category: @relationship_event.category, content: @relationship_event.content, crm_contact: @relationship_event.crm_contact, entity_type: @relationship_event.entity_type, entityreference: @relationship_event.entityreference, have_files: @relationship_event.have_files, tenant: @relationship_event.tenant }
    end

    assert_redirected_to relationship_event_path(assigns(:relationship_event))
  end

  test "should show relationship_event" do
    get :show, id: @relationship_event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @relationship_event
    assert_response :success
  end

  test "should update relationship_event" do
    put :update, id: @relationship_event, relationship_event: { category: @relationship_event.category, content: @relationship_event.content, crm_contact: @relationship_event.crm_contact, entity_type: @relationship_event.entity_type, entityreference: @relationship_event.entityreference, have_files: @relationship_event.have_files, tenant: @relationship_event.tenant }
    assert_redirected_to relationship_event_path(assigns(:relationship_event))
  end

  test "should destroy relationship_event" do
    assert_difference('RelationshipEvent.count', -1) do
      delete :destroy, id: @relationship_event
    end

    assert_redirected_to relationship_events_path
  end
end
