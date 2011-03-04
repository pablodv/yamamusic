class User < ActiveRecord::Base
  has_many :tasks
  devise :database_authenticatable, :confirmable, :recoverable,
         :rememberable, :registerable, :trackable, :timeoutable, :validatable,
         :token_authenticatable

  attr_accessible :email, :password, :password_confirmation

  def full_name
  	"#{first_name} #{last_name}" || username
  end
end
