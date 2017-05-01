class RemoveTitleFromRsvps < ActiveRecord::Migration[5.0]
  def change
    remove_column :rsvps, :title, :string
  end
end
