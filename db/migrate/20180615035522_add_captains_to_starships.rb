class AddCaptainsToStarships < ActiveRecord::Migration[5.2]
  def change
    add_reference :starships, :captain, foreign_key: true
  end
end
