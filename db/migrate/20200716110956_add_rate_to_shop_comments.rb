class AddRateToShopComments < ActiveRecord::Migration[5.2]
  def change
    add_column :shop_comments, :score, :float
  end
end
