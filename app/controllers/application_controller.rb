class ApplicationController < ActionController::Base
  protect_from_forgery
  def EntityObject(params)
    case
    when params[:crm_contact_id]
      CrmContact.find(params[:crm_contact_id])
    when params[:deal_id]
      Deal.find(params[:deal_id])
    when params[:crm_case_id]
      CrmCase.find(params[:crm_case_id])
    end
  end
  def EntityObjectByType(entity_type, entity_id)
    case entity_type
    when 1
      CrmContact
    when 2
      CrmCase
    when 3
      Deal
    end.find(entity_id)
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
end
