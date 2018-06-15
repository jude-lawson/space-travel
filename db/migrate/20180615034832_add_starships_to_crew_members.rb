class AddStarshipsToCrewMembers < ActiveRecord::Migration[5.2]
  def change
    add_reference :crew_members, :starship, foreign_key: true
  end
end
