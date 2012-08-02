class EntityContact < ActiveRecord::Base
  attr_accessible :entity_type, :crm_contact_id, :entity_id
  belongs_to :crm_contact
  def crm_contact111
    CrmContact.find(entity_contact.crm_contact_id).title
  end
end
