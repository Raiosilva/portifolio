FactoryBot.define do
  factory :about do
    description  { FFaker::Lorem.paragraph }
    portifolio
  end
end