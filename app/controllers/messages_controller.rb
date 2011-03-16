class MessagesController < InheritedResources::Base
  before_filter :authenticate_user!

  actions :index, :show

  def show
  	show! { @message.read(current_user) }
  end

 protected
        
   def begin_of_association_chain
     current_user
   end
   
end
