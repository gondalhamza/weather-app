# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

file = File.read('few_cities.json')
data_hash = JSON.parse(file)
data_hash.each do |hash|
	puts "Creating City: #{hash['name']}."
	begin
		if not City.find_by_city_id(hash["id"])
			City.create(name: hash['name'], country: hash['country'], lat: hash["coord"]["lat"], lon: hash["coord"]["lon"], city_id: hash["id"])
			puts "Successfully Created City: #{hash['name']}."
		end
	rescue
		retry
	end
end