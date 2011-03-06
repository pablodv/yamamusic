module ApplicationHelper
  
  def active(name)
    (controller_name == name) ? 'current' : 'select'
  end

  def link_to_new_resource
    if new_action_defined?
      link_to("New #{resource_class.name.titleize}", new_resource_url) unless controller_name == "dashboard"
    end
  end

  def new_action_defined?
    controller.class.action_methods.include?("new")
  end

end
