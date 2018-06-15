class Homeworld < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :galactic_latitude
  validates_presence_of :galactic_longitude

  has_many :crew_members
  has_many :starships
  has_many :captains
  has_many :spaceports
end