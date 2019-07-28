FactoryBot.define do
  factory :portifolio do
    slug    { FFaker::Lorem.unique.word.downcase }
    active  { FFaker::Boolean.sample }
    listed  { FFaker::Boolean.sample }
    featured  { FFaker::Boolean.sample }
    user
  end
end