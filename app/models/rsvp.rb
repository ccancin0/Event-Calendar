class Rsvp < ApplicationRecord
	validates :title, presence:true, uniqueness:true, length: {maximum: 200}
	validates :description, presence:true, length: {maximum: 500}
end
