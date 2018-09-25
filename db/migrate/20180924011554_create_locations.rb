class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :facility
      t.string :room
      t.string :bed

      t.timestamps
    end
  end
end