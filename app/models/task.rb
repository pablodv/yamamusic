class Task < ActiveRecord::Base
  belongs_to :user

  acts_as_commentable

  validates :title, :description, :status, :priority, :user_id, :presence => true
  validates :title, :uniqueness => true

  scope :by_user, lambda { |user| where(:user_id => user) }
  scope :recent, order("created_at desc")
  
end
