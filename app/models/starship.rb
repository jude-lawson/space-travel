class Starship < ApplicationRecord
  validates_presence_of :name

  belongs_to :spaceport
  belongs_to :captain
  belongs_to :homeworld
end