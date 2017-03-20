# == Schema Information
#
# Table name: events
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

class Event < ApplicationRecord
  has_and_belongs_to_many :categories

  def format_time(time)
    time.in_time_zone("CET")
    time.to_s(:time)
  end
end
