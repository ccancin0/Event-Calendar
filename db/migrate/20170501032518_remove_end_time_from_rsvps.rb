class RemoveEndTimeFromRsvps < ActiveRecord::Migration[5.0]
  def change
    remove_column :rsvps, :end_time, :time
  end
end
