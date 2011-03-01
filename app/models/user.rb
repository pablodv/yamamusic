class User < ActiveRecord::Base

  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable,
    :confirmable, :authentication_keys => [:username]

  attr_accessible :first_name, :last_name, :username,:email,
    :password, :password_confirmation, :remember_me
end
