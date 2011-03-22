class CommentsController < InheritedResources::Base
  before_filter :authenticate_user!

  belongs_to :task, :polymorphic => true

  actions :create

  def create
  	build_resource.user   = current_user
    create! do |format|
      format.html do
        load_comments(commentable_path(build_resource))
        render :action => 'index', :layout => false
      end
    end
  end

  protected
   def commentable_path(comment)
     comment.commentable.is_a?(Comment) ? comment.commentable.commentable : comment.commentable
   end

   def load_comments(comment)
     @comments = comment.comments.less_recent
  end
end
