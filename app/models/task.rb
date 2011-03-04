class Task < ActiveRecord::Base
  belongs_to :user

  validates :title, :description, :status, :priority, :user_id, :presence => true
  validates :title, :uniqueness => true
end
