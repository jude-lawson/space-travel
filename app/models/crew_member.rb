class CrewMember < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :rank

  belongs_to :starship
  belongs_to :homeworld
end