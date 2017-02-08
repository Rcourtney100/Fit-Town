# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do

	User.create(
		fname: Faker::Name.first_name,
		lname: Faker::Name.last_name,
		email: Faker::Internet.email,
		password: "password"
	)
end

def create_events	

Event.create(name: "Gym",
	location: "Center City",
	description: "Heading to the Gym",
	time: Faker::Time.forward(23, :morning)
)

Event.create(name: "Biking",
	location: "Fairmount Park",
	description: "Biking around fairmount park",
	time: Faker::Time.forward(23, :morning)
)

Event.create(name: "Yoga",
	location: "Washinton Square",
	description: "Yoga in the park",
	time: Faker::Time.forward(23, :morning)
)


Event.create(name: "Golf",
	location: "Glen Mills",
	description: "Round of 18",
	time: Faker::Time.forward(23, :morning)
)



Event.create(name: "Dog Walk",
	location: "Fishtown",
	description: "Walking dogs around Fishtown",
	time: Faker::Time.forward(23, :morning)
)

end