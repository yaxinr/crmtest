class ListItem < ActiveRecord::Base
  attr_accessible :additional_params, :color, :description, :list_type, :sort_order, :tenant, :title
end
