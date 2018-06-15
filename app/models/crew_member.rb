class CrewMember < ApplicationRecord
  belongs_to :starship
  belongs_to :homeworld
end