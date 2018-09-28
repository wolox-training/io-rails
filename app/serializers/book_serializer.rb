class BookSerializer < ActiveModel::Serializer
  attributes :id, :genre, :author
end
