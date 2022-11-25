class AddImpressionsCountToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :impressions_count, :integer, default: 0
  end
end
