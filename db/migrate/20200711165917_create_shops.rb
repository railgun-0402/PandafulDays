class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.integer :genre_id
      t.integer :station_id
      t.string :shop_name
      t.text :shop_profile
      t.string :shop_address
      t.time :shop_time
      t.text :shop_homepage
      t.string :shop_main
      t.boolean :shop_quit, default: true

      t.timestamps
    end
  end
end
