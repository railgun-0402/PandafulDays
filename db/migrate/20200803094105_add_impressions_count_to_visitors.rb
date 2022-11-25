class AddImpressionsCountToVisitors < ActiveRecord::Migration[5.2]
  def change
    add_column :visitors, :impressions_count, :integer
  end
end
