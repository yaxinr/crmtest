require 'test_helper'

class DealsControllerTest < ActionController::TestCase
  setup do
    @deal = deals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:deals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create deal" do
    assert_difference('Deal.count') do
      post :create, deal: { actual_close_date: @deal.actual_close_date, bid_currency: @deal.bid_currency, bid_type: @deal.bid_type, bid_value: @deal.bid_value, crm_contact: @deal.crm_contact, deal_milestone: @deal.deal_milestone, deal_milestone_probability: @deal.deal_milestone_probability, description: @deal.description, expected_close_date: @deal.expected_close_date, per_period_value: @deal.per_period_value, responsible: @deal.responsible, tenant: @deal.tenant, title: @deal.title }
    end

    assert_redirected_to deal_path(assigns(:deal))
  end

  test "should show deal" do
    get :show, id: @deal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @deal
    assert_response :success
  end

  test "should update deal" do
    put :update, id: @deal, deal: { actual_close_date: @deal.actual_close_date, bid_currency: @deal.bid_currency, bid_type: @deal.bid_type, bid_value: @deal.bid_value, crm_contact: @deal.crm_contact, deal_milestone: @deal.deal_milestone, deal_milestone_probability: @deal.deal_milestone_probability, description: @deal.description, expected_close_date: @deal.expected_close_date, per_period_value: @deal.per_period_value, responsible: @deal.responsible, tenant: @deal.tenant, title: @deal.title }
    assert_redirected_to deal_path(assigns(:deal))
  end

  test "should destroy deal" do
    assert_difference('Deal.count', -1) do
      delete :destroy, id: @deal
    end

    assert_redirected_to deals_path
  end
end
