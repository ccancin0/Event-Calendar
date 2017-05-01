class AddUserIdToRsvps < ActiveRecord::Migration[5.0]
  def change
    add_column :rsvps, :user_id, :integer
  end
end
