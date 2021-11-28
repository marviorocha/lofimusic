FactoryBot.define do
  factory :user do
    full_name { Faker::Name.name }
    username { Faker::Name.middle_name.downcase }
    password { '12345678' }
    email { 'test@test.com' }
    after(:create) { |user| user.confirm }
  end
end
