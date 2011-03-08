class ApplicationController < ActionController::Base
  protect_from_forgery

  def after_sign_in_path_for(resource_or_scope)
    if resource_or_scope.is_a?(User) 
      dashboard_index_path
    else
      admins_dashboard_index_path
    end
  end

  def load_comments
  	@comments = resource.comments.less_recent
  end
end
