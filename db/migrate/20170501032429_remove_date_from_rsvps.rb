class RemoveDateFromRsvps < ActiveRecord::Migration[5.0]
  def change
    remove_column :rsvps, :date, :date
  end
end
