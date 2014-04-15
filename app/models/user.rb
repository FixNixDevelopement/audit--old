class User < ActiveRecord::Base

  belongs_to :account, :inverse_of => :users
  validates :account, :presence => true
  rolify
   attr_accessible :role_ids
   
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body

  has_many :auditinits
  
end
