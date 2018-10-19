require 'sidekiq-scheduler'
class EWorker
  include Sidekiq::Worker
  sidekiq_options retry: false
  def perform(*args)
  	users = User.all
    puts "Im a background worker"
    users.each do |user|
    	activities = Activitie.where(user_id: user.id)
    	UserMailer.activity_report(user.email,  activities).deliver_now
	end
  end
end
