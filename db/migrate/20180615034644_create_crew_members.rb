class CreateCrewMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :crew_members do |t|
      t.string :name
      t.integer :rank
    end
  end
end
