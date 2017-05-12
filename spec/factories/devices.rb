FactoryGirl.define do
  factory :device do
    device_mac { Faker::Lorem.characters(12).upcase }
    serial_no { Faker::Lorem.characters(5).upcase }
    color { Faker::Lorem.characters(6).upcase }
    name { Faker::Name.name }
    description { Faker::Lorem.sentence }
    building { Faker::Company.name }
    level { Faker::Lorem.word }
    device_threshold { rand(10) }
  end
end
