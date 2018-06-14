class Spaceport < ApplicationRecord
  validates_presence_of :name

  has_many :starships
end