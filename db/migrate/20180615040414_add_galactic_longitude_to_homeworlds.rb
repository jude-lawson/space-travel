class AddGalacticLongitudeToHomeworlds < ActiveRecord::Migration[5.2]
  def change
    add_column :homeworlds, :galactic_longitude, :float
  end
end
