class AddHomeworldsToCaptains < ActiveRecord::Migration[5.2]
  def change
    add_reference :captains, :homeworld, foreign_key: true
  end
end
