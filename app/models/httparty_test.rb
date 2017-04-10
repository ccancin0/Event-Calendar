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
# https://www.meetup.com/meetup_api/docs/
 

 def create_events
  base_uri = 'https://memgo-api.herokuapp.com/calendar.json'
  response = HttpartyTest.get(base_uri)
  payload = JSON.parse(response.body)
  raw_events = payload.fetch('meetups')

  raw_events.each do |x|
    loaf = DateTime.strptime(x['time'].to_s, "%Q")
    Event.create(title: x['name'], description: x['description'], color: "black", start: loaf, end: loaf)
  end
end

 # def create_events
 #   meetup_api_url = 'https://memgo-api.herokuapp.com/calendar.json'
 #   test = HttpartyTest.get(meetup_api_url)
 #   test.post.each do |posts|
 #     #p "Title: #{posts['title']} | Description: #{posts['description']}"
 #     @httparty_tests = test.fetch('meetups')

 #     Event.create(title: posts['title'], description: posts['description'])
 #   end
 # end

  # def initialize(service, page)
  #   @options = {query: {site: service}}
  # end
  #
  # def events
  #   self.class.get('', @options)
  # end




 #puts test.post
# end
 end
