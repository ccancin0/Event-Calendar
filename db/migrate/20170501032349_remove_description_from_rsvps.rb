class RemoveDescriptionFromRsvps < ActiveRecord::Migration[5.0]
  def change
    remove_column :rsvps, :description, :string
  end
end
