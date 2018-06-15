class AddStarshipsToCaptains < ActiveRecord::Migration[5.2]
  def change
    add_reference :captains, :starship, foreign_key: true
  end
end
