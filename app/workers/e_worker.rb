require 'sidekiq-scheduler'
class EWorker
  include Sidekiq::Worker

  def perform(*args)
    puts "Im a background worker"
  end
end
