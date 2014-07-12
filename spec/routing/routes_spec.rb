require 'spec_helper'
describe 'Routes' do
	
	describe 'EventsController' do

		it "should get index" do
			{ :get => '/events/' }.should route_to( :controller =>'events', :action => 'index' )
		end

		it "should get new" do
			{ :get => '/events/new' }.should route_to( :controller =>'events', :action => 'new' )
		end

		it "should post create" do
			{ :post => '/events/' }.should route_to( :controller =>'events', :action => 'create' )
		end
	
		it "should get show" do
			{ :get => '/events/42' }.should route_to( :controller =>'events', :action => 'show', :id => '42' )
		end
		
		it "should destroy event" do
			{ :delete => '/events/42' }.should route_to( :controller =>'events', :action => 'destroy', :id => '42' )
		end
	
	end

	describe 'CollectionsController' do
		
	end
	
end