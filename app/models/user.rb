class User < ActiveRecord::Base

<<<<<<< HEAD
  # after_create :assign_default_user_role
=======
  after_create :assign_default_user_role
>>>>>>> eed9c3d082fbacb2165aac123dd16f5b25dbd9ce

  belongs_to :account, :inverse_of => :users
  #validates :account, :presence => true
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

<<<<<<< HEAD
  # def assign_default_user_role
  #   add_role(:admin)
  # end
=======
  def assign_default_user_role
    add_role(:admin)
  end
>>>>>>> eed9c3d082fbacb2165aac123dd16f5b25dbd9ce

  def self.min_send_mail
    @user =User.all
    @user.each do |u|
      UserMailer.welcome_email(u).deliver
    end
  end
  
  def self.reminder
    @auditinit = Auditinit.all
    @auditinit.each do |audit|
      if(audit.end_date - Date.today <=3)
        UserMailer.reminder_email(audit).deliver
      end
    end
  end

end
