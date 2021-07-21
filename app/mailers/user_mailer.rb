class UserMailer < ApplicationMailer
default from: 'hirva.essence@gmail.com'
  layout 'mailer'

  def daily_report(user_email)
  	@user_email = user_email
  	mail(to: user_email, subject: 'Welcome to My Awesome Site')
	end
end