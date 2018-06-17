FactoryBot.define do
  factory :spaceport do
    sequence(:name) { |n| "Spaceport #{n}" }
    docked_ships '3'
    homeworld
    galactic_latitude '123.456789'
    galactic_longitude '987.654321'
  end
end