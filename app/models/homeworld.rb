class Homeworld < ApplicationRecord
  validates_presence_of :name

  has_many :crew_members
  has_many :starships
  has_many :captains
  has_many :spaceports
end