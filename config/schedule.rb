set :environment, "development"

every 1.day do
	rake 'sendmail:daily_report'
end