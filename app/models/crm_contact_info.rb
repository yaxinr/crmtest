class CrmContactInfo < ActiveRecord::Base
  # TYPES = [ {:1 => "Check", :2=>"Credit card", :3=>"Purchase order" }]
  belongs_to :tenant
  belongs_to :crm_contact
  attr_accessible :category_id, :contact_id, :tenant_id, :data, :is_primary, :type_id
  # validates :type, :inclusion =>   { :in => TYPES.keys.map(&:to_s) }
  def type
    @a=ARRAY_CONTACT_INFO_TYPE[type_id]
    @a[0] if @a
  end
  def category
    @a=ARRAY_CONTACT_INFO_CATEGORY[category_id]
    @a[0] if @a
  end
end
