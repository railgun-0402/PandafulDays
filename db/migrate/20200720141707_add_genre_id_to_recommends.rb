class AddGenreIdToRecommends < ActiveRecord::Migration[5.2]
  def change
    add_column :recommends, :genre_id, :integer
    add_column :recommends, :station_id, :integer
  end
end
