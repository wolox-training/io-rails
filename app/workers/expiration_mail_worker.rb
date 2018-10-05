require 'sidekiq-scheduler'
class ExpirationMailWorker
  include Sidekiq::Worker

  def perform
    rents = Rent.where(rent_end: Date.current.to_s)
    rents.each do |item|
      mail = RentMailer.rent_expiration(item)
      mail.deliver_later
    end
  end
end
