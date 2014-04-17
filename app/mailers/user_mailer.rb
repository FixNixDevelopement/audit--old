class UserMailer < ActionMailer::Base
<<<<<<< HEAD
  default from: 'venukumarb2012@yahoo.com'
=======
  default from: 'ghayathri@fixrnix.in'
>>>>>>> eed9c3d082fbacb2165aac123dd16f5b25dbd9ce
 
  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: 'welcome')
<<<<<<< HEAD
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
=======
  end
end
>>>>>>> eed9c3d082fbacb2165aac123dd16f5b25dbd9ce
