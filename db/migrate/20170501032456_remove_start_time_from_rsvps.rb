class RemoveStartTimeFromRsvps < ActiveRecord::Migration[5.0]
  def change
    remove_column :rsvps, :start_time, :time
  end
end
