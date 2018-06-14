class Captain < ApplicationRecord
  validates_presence_of :name

  belongs_to :starship
  belongs_to :planet
end