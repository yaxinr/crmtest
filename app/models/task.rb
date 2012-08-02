class Task < ActiveRecord::Base
  attr_accessible :category_id, :crm_contact_id, :deadline, :description, :entity_id, :entity_type, :is_closed, :responsible_id, :tenant_id, :title
  belongs_to :category
  def entity_object
    EntityObjectByChild(self)
  end
end
