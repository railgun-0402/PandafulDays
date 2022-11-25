class CreateStations < ActiveRecord::Migration[5.2]
  def change
    create_table :stations do |t|
      t.string :station_name
      t.boolean :station_status, default: true

      t.timestamps
    end
  end
end
