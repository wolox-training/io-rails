FactoryBot.define do
  factory :book do
    genre     { Faker::Book.genre }
    author    { Faker::Book.author }
    title     { Faker::Book.title }
    editor    { Faker::Book.publisher }
    image     { Faker::Name.last_name }
    year      { Faker::Number.number(4) }
  end


  factory :user do
    first_name { Faker::Name.first_name}
    last_name { Faker::Name.last_name}
  end
end
