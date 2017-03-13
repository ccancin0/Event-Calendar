# == Schema Information
#
# Table name: httparty_tests
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rubygems'
require 'httparty'

class HttpartyTest < ApplicationRecord
  include HTTParty
  base_uri 'www.meetup.com'

# https://www.meetup.com/meetup_api/docs/
 def post
   self.class.get('/find/events/?allMeetups=false&keywords=University+of+Memphis&radius=50&userFreeform=Memphis%2C+TN&mcId=z37501&mcName=Memphis%2C+TN&eventFilter=my')
 end

 def create_events
   test = HttpartyTest.new
   test.post.each do |posts|
     #p "Title: #{posts['title']} | Description: #{posts['description']}"
     Event.create(title: posts['title'], description: posts['description'])
   end
 end

  # def initialize(service, page)
  #   @options = {query: {site: service}}
  # end
  #
  # def events
  #   self.class.get('', @options)
  # end




 #puts test.post
end
