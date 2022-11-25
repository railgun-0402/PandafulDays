class CreateRecommends < ActiveRecord::Migration[5.2]
  def change
    create_table :recommends do |t|
      t.integer :user_id
      t.string :recommend_shop_name
      t.text :recommend_shop_profile
      t.string :recommend_shop_address
      t.text :recommend_shop_homepage
      t.string :recommend_image_id

      t.timestamps
    end
  end
end
