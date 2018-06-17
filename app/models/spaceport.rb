class Spaceport < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :galactic_latitude
  validates_presence_of :galactic_longitude
  

  has_many :starships
  belongs_to :homeworld
end