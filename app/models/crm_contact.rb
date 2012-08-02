class CrmContact < ActiveRecord::Base  
  attr_accessible :title, :company_id, :company_name, :first_name, :industry, :is_company, :last_name, :notes, :status_id, :tenant_id
  has_one :phone,  :class_name => "CrmContactInfo", :conditions => { :type_id => 0 }
  has_one :email,  :class_name => "CrmContactInfo", :conditions => { :type_id => 1 }
  has_many :crm_contact_infos, dependent: :destroy
  has_many :relationship_events, dependent: :destroy, :conditions => { :entity_type => 1 }, :foreign_key => "entity_id"
  has_many :tasks, dependent: :destroy, :conditions => { :entity_type => 1 }, :foreign_key => "entity_id"
  has_many :entity_tags, dependent: :destroy, :conditions => { :entity_type => 1 }, :foreign_key => "entity_id"
  has_many :deals
  belongs_to :company, :class_name => "CrmContact",  :foreign_key => "company_id"
  belongs_to :status, :class_name => "ListItem"
  def is_company_text
    ARRAY_CONTACT_TYPE[is_company][0]
  end
  def company_title
    company.title if company
  end
end
