class BookSuggestion < ApplicationRecord
  belongs_to :user, optional: true
  validates :title, :author, :synopsis, :year, :publisher, presence: true
  validates :price , numericality: {greater_than: 0}
end
