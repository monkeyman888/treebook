class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # removing this line seems to work ok while removing attr_accessible in status.rb does not so has to do with the code we used for .permit; in Rails4, "Strong Parameters" are used so no need for attr_accessible anymore 
  #attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name, :profile_name

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :profile_name, presence: true, uniqueness: true, 
  format: { 
  	with: /a-zA-Z0-9_-/,
  	message: "Must be formatted correctly."
  }


  has_many :statuses

  def full_name
  	first_name + " " + last_name
  end
end
