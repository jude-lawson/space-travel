class AddGalacticLatitudeToHomeworlds < ActiveRecord::Migration[5.2]
  def change
    add_column :homeworlds, :galactic_latitude, :float
  end
end
