class AddHomeworldsToCrewMembers < ActiveRecord::Migration[5.2]
  def change
    add_reference :crew_members, :homeworld, foreign_key: true
  end
end
