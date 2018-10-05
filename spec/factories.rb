FactoryBot.define do
  factory :book do
    genre { Faker::Book.genre }
    author  { Faker::Book.author }
    title { Faker::Book.title }
    editor { Faker::Book.publisher }
    image { 'Image' }
    year { Faker::Date }
  end

  factory :user do
    first_name { Faker::Name.name }
    last_name { Faker::Name.last_name }
    email { Faker::Internet.email }
    password { Faker::DcComics.villain }
  end
end
