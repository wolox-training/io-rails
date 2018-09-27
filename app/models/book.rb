class Book < ApplicationRecord
  has_many :rents, dependent: :destroy
  has_many :users, through: :rents
  validates :genre, :author, :image, :title, :editor, :year, presence: true
end
