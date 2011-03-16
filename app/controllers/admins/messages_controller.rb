class Admins::MessagesController < InheritedResources::Base
  before_filter :authenticate_admin!
  
  actions :index, :new, :create, :show

  def create
  	create! do |success, failure|
      success.html { redirect_to collection_path }
    end
  end
end
