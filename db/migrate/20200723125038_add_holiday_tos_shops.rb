class AddHolidayTosShops < ActiveRecord::Migration[5.2]
  def change
  	add_column :shops, :holiday, :string
  end
end
