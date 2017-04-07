# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  title       :string
#  description :string
#  date        :date
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  start       :datetime
#  end         :datetime
#  color       :string
#

class Event < ApplicationRecord
  acts_as_votable
  #has_and_belongs_to_many :categories
  # validates :title, presence: true
  # validates :title, presence:true, uniqueness:true, length: {maximum: 200}
  # validates :description, presence:true, length: {maximum: 500}

  attr_accessor :date_range

  def all_day_event?
    self.start == self.start.midnight && self.end == self.end.midnight ? true : false
  end

end
