class TasksController < InheritedResources::Base
  before_filter :authenticate_user!
  before_filter :load_comments, :only => :show

  actions :index, :edit, :update, :show

  def update
  	update! do |success, failure|
      success.html { redirect_to collection_path }
    end
  end

  protected
    def begin_of_association_chain
      current_user
    end
end
