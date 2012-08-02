class FieldDescription < ActiveRecord::Base
  attr_accessible :entity_type, :label, :mask, :sort_order, :tenant, :type
end
