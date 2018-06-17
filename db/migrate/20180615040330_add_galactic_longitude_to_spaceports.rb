class AddGalacticLongitudeToSpaceports < ActiveRecord::Migration[5.2]
  def change
    add_column :spaceports, :galactic_longitude, :float
  end
end
