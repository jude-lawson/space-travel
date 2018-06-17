FactoryBot.define do
  factory :homeworld do
    sequence(:name) { |n| "Astronomical Object #{n}" }
    galactic_longitude '123.456789'
    galactic_latitude '987.654321'
  end
end