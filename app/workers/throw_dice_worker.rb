class ThrowDiceWorker
  include Sidekiq::Worker
  sidekiq_options retry: false

  def perform
    puts "Your point: #{(1..6).to_a.sample}"
  end
end
