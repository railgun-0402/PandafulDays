class AddFinishTimeTosShops < ActiveRecord::Migration[5.2]
  def change
  	add_column :shops, :finish_time, :time
  end
end
