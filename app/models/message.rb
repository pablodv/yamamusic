class Message < ActiveRecord::Base
  has_many :recipents
  has_many :users, :through => :recipents

  validates :subject, :presence => true 

  attr_accessible :subject, :body, :user_ids
end
