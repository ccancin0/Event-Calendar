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

require 'test_helper'

class CategoryEventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
