class RemoveEndTimeFromEvents < ActiveRecord::Migration[5.0]
  def change
    remove_column :events, :end_time, :time
  end
end
