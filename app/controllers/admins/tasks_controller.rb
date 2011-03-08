class Admins::TasksController < InheritedResources::Base
  before_filter :authenticate_admin!
  before_filter :load_comments, :only => :show

  def create
    create! do |success, failure|
      success.html { redirect_to collection_path }
    end
  end

  def update
  	update! do |success, failure|
      success.html { redirect_to collection_path }
    end
  end
  
end
