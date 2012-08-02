class RelationshipEvent < ActiveRecord::Base
  attr_accessible :category_id, :content, :crm_contact_id, :entity_type, :entity_id, :have_files, :tenant_id
end
