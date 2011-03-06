class Admins::TasksController < InheritedResources::Base
  before_filter :authenticate_admin!

  def create
    create! do |success, failure|
      success.html { redirect_to collection_path }
    end
  end
  
end
