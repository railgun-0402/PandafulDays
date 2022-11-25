class AddQuitToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :quit, :boolean, default: true
  end
end
