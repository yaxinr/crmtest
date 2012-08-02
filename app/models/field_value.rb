class FieldValue < ActiveRecord::Base
  attr_accessible :entity, :entity_type, :field, :tenant, :value
end
