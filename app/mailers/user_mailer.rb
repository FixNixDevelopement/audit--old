class UserMailer < ActionMailer::Base
  default from: 'sreenivas1591@gmail.com'
 
  def welcome_email(user)
    @user = user
    @url  = 'http://www.fixrnix.in'
    mail(to: @user.email, subject: 'Welcome to FixNix Audit Management')
  end
end