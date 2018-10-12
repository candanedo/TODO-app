require 'sidekiq-scheduler'
class EWorker
  include Sidekiq::Worker

  def perform(*args)
    puts "Im a background worker"
    UserMailer.activity_report("eduardo.candanedo.94@gmail.com").deliver_now
  end
end
