class AddGalacticLatitudeToSpaceports < ActiveRecord::Migration[5.2]
  def change
    add_column :spaceports, :galactic_latitude, :float
  end
end
