namespace :sendmail do
  desc "daily_mail"
  task :daily_report => :environment do
    UserMailer.daily_report.deliver
  end
end