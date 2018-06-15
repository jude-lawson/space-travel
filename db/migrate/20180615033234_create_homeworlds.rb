class CreateHomeworlds < ActiveRecord::Migration[5.2]
  def change
    create_table :homeworlds do |t|
      t.string :name
    end
  end
end
