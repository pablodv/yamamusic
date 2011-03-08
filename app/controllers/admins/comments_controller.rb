class Admins::CommentsController < InheritedResources::Base
  before_filter :authenticate_admin!

  belongs_to :task, :polymorphic => true

  actions :create, :destroy

  def create
  	build_resource.user   = current_user
    create! do |format|
      format.html do
        load_comments(commentable_path(build_resource))
        render :action => 'index', :layout => false
      end
    end
  end

  def destroy
  end
  
  protected
   def commentable_path(comment)
     comment.commentable.is_a?(Comment) ? comment.commentable.commentable : comment.commentable
   end

   def load_comments(comment)
     @comments = comment.comments.less_recent
  end
end
