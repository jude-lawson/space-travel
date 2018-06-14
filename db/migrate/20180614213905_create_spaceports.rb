class CreateSpaceports < ActiveRecord::Migration[5.2]
  def change
    create_table :spaceports do |t|
      t.string :name
      t.integer :docked_ships
    end
  end
end
