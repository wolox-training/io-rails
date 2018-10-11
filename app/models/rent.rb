class Rent < ApplicationRecord
  belongs_to :user
  belongs_to :book
  validates :user, :book, :rent_date, :rent_end, presence: true
end
