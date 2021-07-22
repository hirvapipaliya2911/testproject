namespace :sendmail do
  desc "daily_mail"
  task :daily_report => :environment do
    begin
      email = User.admin.pluck(:email) 
      UserMailer.daily_report(email).deliver
      p "---------Email is send to #{email}--------------"
    rescue 
      p 'email not found'
    end
  end
end