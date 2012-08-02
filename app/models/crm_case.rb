class CrmCase < ActiveRecord::Base
  attr_accessible :isClosed, :tenant_id, :title
  has_many :relationship_events, dependent: :destroy, :conditions => { :entity_type => 2 }, :foreign_key => "entity_id"
  has_many :tasks, dependent: :destroy, :conditions => { :entity_type => 2 }, :foreign_key => "entity_id"
  has_many :entity_tags, dependent: :destroy, :conditions => { :entity_type => 2 }, :foreign_key => "entity_id"
  has_many :entity_contacts, dependent: :destroy, :conditions => { :entity_type => 2 }, :foreign_key => "entity_id"
end
