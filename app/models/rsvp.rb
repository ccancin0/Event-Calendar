# == Schema Information
#
# Table name: rsvps
#
#  id          :integer          not null, primary key
#  title       :string
#  description :string
#  date        :date
#  start_time  :time
#  end_time    :time
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Rsvp < ApplicationRecord
	validates :title, presence:true, uniqueness:true, length: {maximum: 200}
	validates :description, presence:true, length: {maximum: 500}
end
