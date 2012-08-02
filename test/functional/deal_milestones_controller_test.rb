require 'test_helper'

class DealMilestonesControllerTest < ActionController::TestCase
  setup do
    @deal_milestone = deal_milestones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:deal_milestones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create deal_milestone" do
    assert_difference('DealMilestone.count') do
      post :create, deal_milestone: { color: @deal_milestone.color, description: @deal_milestone.description, probability: @deal_milestone.probability, sort_order: @deal_milestone.sort_order, status: @deal_milestone.status, title: @deal_milestone.title }
    end

    assert_redirected_to deal_milestone_path(assigns(:deal_milestone))
  end

  test "should show deal_milestone" do
    get :show, id: @deal_milestone
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @deal_milestone
    assert_response :success
  end

  test "should update deal_milestone" do
    put :update, id: @deal_milestone, deal_milestone: { color: @deal_milestone.color, description: @deal_milestone.description, probability: @deal_milestone.probability, sort_order: @deal_milestone.sort_order, status: @deal_milestone.status, title: @deal_milestone.title }
    assert_redirected_to deal_milestone_path(assigns(:deal_milestone))
  end

  test "should destroy deal_milestone" do
    assert_difference('DealMilestone.count', -1) do
      delete :destroy, id: @deal_milestone
    end

    assert_redirected_to deal_milestones_path
  end
end
