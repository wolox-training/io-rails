FactoryBot.define do
  factory :rent do
    user  { FactoryBot.create(:user) }
    book { FactoryBot.create(:book) }
    rent_date { Faker::Date.between(20.days.ago, 10.days.ago) }
    rent_end  { Faker::Date.between(11.days.ago, Time.zone.today) }
  end
end
