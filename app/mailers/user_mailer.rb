class UserMailer < ApplicationMailer
default from: 'hirva.essence@gmail.com'
  layout 'mailer'

  def daily_report(email)
  	mail(to:email,subject: 'Welcome to My Site')
	end

end