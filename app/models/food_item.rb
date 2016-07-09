class FoodItem < ApplicationRecord
	validates :name, :section, presence: true

	def image_url
		if remote_image_url.present?
			remote_image_url
		else
			"https://loremflickr.com/320/240/#{CGI.escape name}"
		end
	end
end
