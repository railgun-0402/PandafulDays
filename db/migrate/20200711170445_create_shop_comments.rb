class CreateShopComments < ActiveRecord::Migration[5.2]
  def change
    create_table :shop_comments do |t|
      t.integer :user_id
      t.integer :shop_id
      t.text :comment

      t.timestamps
    end
  end
end
