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
  validates :title, presence: true
  attr_accessor :date

  def all_day_event?
    self.start == self.start_time.midnight && self.end == self.end_time.midnight ? true : false
  end
end
