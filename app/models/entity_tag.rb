class EntityTag < ActiveRecord::Base
  attr_accessible :entity_id, :entity_type, :tag_id
  validates :tag_id, :uniqueness => { :scope => [:entity_id, :entity_type],
    :message => "should happen once per year" }
end
