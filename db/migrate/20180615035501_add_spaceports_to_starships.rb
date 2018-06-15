class AddSpaceportsToStarships < ActiveRecord::Migration[5.2]
  def change
    add_reference :starships, :spaceport, foreign_key: true
  end
end
