class RemoveImpressionsCountToUsers < ActiveRecord::Migration[5.2]
  def change
  	remove_column :users, :impressions_count, :integer, default: 0
  end
end
