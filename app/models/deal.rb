class Deal < ActiveRecord::Base
  attr_accessible :actual_close_date, :bid_currency, :bid_type, :bid_value, :crm_contact_id, :deal_milestone_id, :deal_milestone_probability, :description, :expected_close_date, :per_period_value, :responsible, :tenant, :title
  has_many :relationship_events, dependent: :destroy, :conditions => { :entity_type => 3 }, :foreign_key => "entity_id"
  has_many :tasks, dependent: :destroy, :conditions => { :entity_type => 3 }, :foreign_key => "entity_id"
  has_many :entity_tags, dependent: :destroy, :conditions => { :entity_type => 3 }, :foreign_key => "entity_id"
  has_many :entity_contacts, dependent: :destroy, :conditions => { :entity_type => 3 }, :foreign_key => "entity_id"
end
