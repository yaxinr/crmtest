class Tag < ActiveRecord::Base
  attr_accessible :entity_type, :tenant, :title
end
