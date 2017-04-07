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

require 'test_helper'

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
