class City < ApplicationRecord
	def name_with_city_code
		"#{name}, #{city_id}"
	end
end