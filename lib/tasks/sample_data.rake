require 'faker'

namespace :db do
	desc "Fill Database with sample data"
	task populate: :environment do
		Event.create!(event_name: "Example Event",
					 description: "Lorem",
					       sdate: DateTime.new(2014, 10, 10),
					       edate: DateTime.new(2014, 10, 13),
					        link: "www.example.com",
					        active: true )
		50.times do |n|
			event_name = Faker::Company.name
			description = Faker::Lorem.sentence
      		sdate = DateTime.new(2014, 10, 10)
      		edate = DateTime.new(2014, 10, 13)
       		link = "www.example.com"
       		active = true
       		Event.create!(event_name: event_name,
       						description: description,
       						sdate: sdate,
       						edate: edate,
       						link: link,
       						active: true)
       	end
	end
end