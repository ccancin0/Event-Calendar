# == Schema Information
#
# Table name: rsvps
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#  event_id   :integer
#

class Rsvp < ApplicationRecord
	validates :user_id, presence:true
	validates :event_id, presence:true
end
