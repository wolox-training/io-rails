class BookSuggestion < ApplicationRecord
  belongs_to :user, optional: true
end
