class Message < ActiveRecord::Base
  has_many :recipents
  has_many :users, :through => :recipents

  validates :subject, :presence => true 

  attr_accessible :subject, :body, :user_ids

  scope :by_user, lambda { |user, status| where("recipents.user_id =? AND recipents.read =?", user, status).includes(:recipents) }

  scope :recent, order("messages.created_at desc")

  def read(current_user)
    r = Recipent.find_by_user_id_and_message_id(current_user.id, self.id)
    r.update_attributes(:read => true, :read_at => DateTime.now)
  end

end
