FactoryBot.define do
  factory :profile do
    name    { FFaker::Name.name }
    title  { FFaker::Lorem.word }
    
    trait :with_photo do
      after :build do |portifolio|
        image = File.open(Rails.rrot.join('features', 'factories', 'images', 'portifolio-photo.png'))
        portifolio.photo.attach(io: image, filename: "profile-photo.png")
      end
    end
  end
end