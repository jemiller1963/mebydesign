require 'faker'

FactoryGirl.define do 
	factory :event do |e|
		e.event_name     { Faker::Company.name} 
		e.description    { Forgery(:lorem_ipsum).words(25) }
		e.sdate          Date.new(2014, 10, 10)
		e.edate          Date.new(2014, 10, 12)
		e.link           { Faker::Internet.url('example.com') }
	end
	factory :invalid_event, parent: :event do |e|
		e.event_name nil
	end
end