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
  validates :title, presence:true, uniqueness:true, length: {maximum: 200}
  validates :description, presence:true, length: {maximum: 500}
end
