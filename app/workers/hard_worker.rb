class HardWorker
  include Sidekiq::Worker
  def perform(name, count)
    # do something
    puts "Hi #{name}"
  end
end