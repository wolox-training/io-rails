require 'sidekiq-scheduler'
class RememberMailWorker
  include Sidekiq::Worker

  def perform
    rents = Rent.where(rent_end: Date.tomorrow.to_s)
    rents.each do |item|
      mail = RentMailer.rent_remember(item)
      mail.deliver_later
    end
  end
end
