class UserMailer < ActionMailer::Base
  default from: 'sreenivas1591@gmail.com'
 
  def welcome_email(user)
    @user = user
    @url  = 'http://www.fixrnix.in'
    mail(to: @user.email, subject: 'Welcome to FixNix Audit Management')
  end

	def initiate_audit(auditinit)
    	@auditinit = auditinit
    	
    	mail(:to => @auditinit.auditor_email, :subject => "Notification: Mark your calendar, an audit is assigned")  
  	end

end