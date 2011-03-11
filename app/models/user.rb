class User < ActiveRecord::Base
  has_many :tasks
  has_and_belongs_to_many :messages

  devise :database_authenticatable, :confirmable, :recoverable,
         :rememberable, :registerable, :trackable, :timeoutable, :validatable,
         :token_authenticatable

  attr_accessible :first_name, :last_name, :email, :password, :password_confirmation

  def full_name
  	"#{first_name} #{last_name}" || username
  end
end
