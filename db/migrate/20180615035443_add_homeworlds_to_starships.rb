class AddHomeworldsToStarships < ActiveRecord::Migration[5.2]
  def change
    add_reference :starships, :homeworld, foreign_key: true
  end
end
