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
end
