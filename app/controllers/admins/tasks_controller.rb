class Admins::TasksController < InheritedResources::Base
  before_filter :authenticate_admin!

end
