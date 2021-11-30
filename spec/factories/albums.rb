FactoryBot.define do
  factory :album do
    name { Faker::Music.album }
    year { Time.zone.now.year }
    artist { Faker::Music.band }
  end
end
