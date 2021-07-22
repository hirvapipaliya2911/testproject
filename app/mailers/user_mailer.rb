class UserMailer < ApplicationMailer
default from: 'hirva.essence@gmail.com'
  layout 'mailer'

  def daily_report
  	mail(to:User.admin.pluck(:email).join(','),subject: 'Welcome to My Site')
	end

end