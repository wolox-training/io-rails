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
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    email { Faker::Internet.email }
    password { Faker::Internet.password(10, 20, true) }
  end

  factory :rent do
    user  { FactoryBot.create(:user) }
    book { FactoryBot.create(:book) }
    rent_date { Faker::Date.between(20.days.ago, 10.days.ago) }
    rent_end  { Faker::Date.between(11.days.ago, Time.zone.today) }
  end
end
