FactoryBot.define do
  factory :user do
    email { FFaker::INternet.unique.email }
    password '123456789'
    passowrd_confirmation '123456789'
  end
end