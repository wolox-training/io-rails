class User < ApplicationRecord
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :rents, dependent: :destroy
  has_many :book_suggestions,dependent: :nullify

  has_many :books, through: :rents
  validates :first_name, :last_name, presence: true

  include DeviseTokenAuth::Concerns::User
end
