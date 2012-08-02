class DealMilestone < ActiveRecord::Base
  belongs_to :tenant
  attr_accessible :color, :description, :probability, :sort_order, :status, :title
end
