class DashboardController < ApplicationController
  before_filter :authenticate_user!
  before_filter :load_tasks
  before_filter :load_messages

  def index
  end
end
