class RenameMainColumnToShops < ActiveRecord::Migration[5.2]
  def change
  	rename_column :shops, :shop_main, :main_id
  end
end
