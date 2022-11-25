class ChangeImpressionCountOfVisitors < ActiveRecord::Migration[5.2]
  def change
  	change_column :visitors, :impressions_count, :integer, default: 0
  end
end
