# == Schema Information
#
# Table name: events
#
#  id                      :integer          not null, primary key
#  title                   :string
#  description             :string
#  date                    :date
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#  start                   :datetime
#  end                     :datetime
#  color                   :string
#  cached_votes_total      :integer          default("0")
#  cached_votes_score      :integer          default("0")
#  cached_votes_up         :integer          default("0")
#  cached_votes_down       :integer          default("0")
#  cached_weighted_score   :integer          default("0")
#  cached_weighted_total   :integer          default("0")
#  cached_weighted_average :float            default("0.0")
#  address                 :string
#  latitude                :float
#  longitude               :float
#

require 'test_helper'

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
