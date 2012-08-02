module ApplicationHelper
  def currentpage(controller)
    "current" if params[:controller] == controller
  end
  def EntityObjectByChild(child)
    if child.entity_type
    case child.entity_type
    when 1
      CrmContact
    when 2
      CrmCase
    when 3
      Deal
    end.find(child.entity_id)
    end
  end
  def entity_object_path(entity_object)
     if entity_object then url_for(entity_object) else '' end
  end
end
