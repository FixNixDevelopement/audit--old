class UserMailer < ActionMailer::Base
  default from: 'venukumarb2012@yahoo.com'
 
  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: 'welcome')
  end

  def reminder_email(audit)
  	@audit = audit
  	mail(to: "ghayathri@fixrnix.in", subject: "knock knock knock!!!! Your audit: " <<@audit.title<<   "needs attention")
  end

  def initiate_audit(audit)
  	@audit = audit
  	mail(to: "sreenivas1591@gmail.com", subject: 'A new audit intiated')
  end


end
