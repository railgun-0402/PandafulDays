class AddAverageToShops < ActiveRecord::Migration[5.2]
  def change
    add_column :shops, :average_score, :float
  end
end
