# == Schema Information
#
# Table name: category_events
#
#  id          :integer          not null, primary key
#  event_id    :integer
#  category_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class CategoryEvent < ApplicationRecord
  belongs_to :event
  belongs_to :category

  def get_event_id
    return event_id
  end

  def get_category_id
    return category_id
  end
end
