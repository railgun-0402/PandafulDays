class CreateVisitors < ActiveRecord::Migration[5.2]
  def change
    create_table :visitors do |t|

      t.timestamps
    end
  end
end
