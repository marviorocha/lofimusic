FactoryBot.define do
  factory :album do
    name { Faker::Music.album }
    year { Faker::Date.between(from: 100.year.ago, to: Date.today) }
    artist { Faker::Music.band }
  end
end
