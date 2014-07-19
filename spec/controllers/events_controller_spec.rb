require 'spec_helper'
describe EventsController do
subject { post :create , { 	event: { 
									event_name: 'Test Event 1',
									description: 'Lorem',
									sdate: '10/10/2014',
									edate: '10/12/2014',
									link: 'www.example.com'}
									}
		}



	describe '#create' do
		its(:status) { should == 302 }
		it "saves the event" do
			subject
			Event.all.count.should == 1
		end
		it "should redirect to show the creaed event" do
			subject.should redirect_to(event_path(Event.first.id))
		end
	end

	describe '#new' do
		its(:status) { should == 302 }
		it "should render the new view" do
			subject
			get :new
			response.should render_template(:new)
		end
	end

	describe "#show" do
		context "when the event exists" do
			let(:event) { Event.create( event_name: 'Test Event 1',
									   description: 'Lorem',
									         sdate: '10/10/2014',
									         edate: '10/12/2014',
									          link: 'www.example.com')}
			subject{ get :show, :id => event.id}
			it "assigns @event" do
				subject
				assigns(:event).should eq(event)
			end
			it "should render the show template" do
			subject
			# get :show
			response.should render_template(:show)
			end
		end
		context "when the event does not exits" do
			subject { get :show, :id => 404 }
			its(:status) { should == 404 }
		end
	end

	describe "GET #index" do
		it "populates an array of events" do
			# USING FACTORIES
			event = create(:event)
			get :index
			assigns(:events).should eq([event])
		end
		it "renders the :index view" do
			get :index
			response.should render_template :index
		end
	end

	describe "PUT #update" do
		before :each do
			@event = create(:event, event_name: 'Test Event 1',
									description: 'Lorem',
									      sdate: DateTime.new(2014, 10, 10),
									      edate: DateTime.new(2014, 10, 12),
									       link: 'www.example.com')
		end
		context "valid attributes" do
			it "located the request @event" do
				put :update, id: @event, event: attributes_for(:event)
				assigns(:event).should eq(@event)
			end
			it "changes @event's attributes" do
				put :update, id: @event,
								event: attributes_for(:event, 
									 event_name: 'Test Event 2',
									description: 'Lorem ipsum dolor',
									      sdate: DateTime.new(2014, 10, 10),
									      edate: DateTime.new(2014, 10, 12),
									       link: 'www.example.com/test')
				@event.reload
				@event.event_name.should eq("Test Event 2")
				@event.description.should eq("Lorem ipsum dolor")
				@event.sdate.should eq DateTime.new(2014, 10, 10)
				@event.edate.should eq DateTime.new(2014, 10, 12)
				@event.link.should eq("www.example.com/test")
			end
			it "redirects to updated event" do
				put :update, id: @event, event: attributes_for(:event)
				response.should redirect_to @event
			end
		end

		context "invalid attributes" do
			it "locates the requested @event" do
				put :update, id: @event, event: attributes_for(:invalid_event)
				assigns(:event).should eq(@event)
			end
			it "does not change @event's attributes" do
				put :update, id: @event, event: attributes_for(	:event, 
									 event_name: nil,
									description: 'Lorem ipsum dolor',
									      sdate: Date.new(2014, 10, 10),
									      edate: Date.new(2014, 10, 12),
									       link: 'www.example.com/test')
				@event.reload
				@event.event_name.should_not eq("Test Event 2")
				@event.description.should_not eq("Lorem ipsum dolor")
				@event.sdate.to_date.should_not eq Date.new(2014, 11, 10)
				@event.edate.to_date.should_not eq Date.new(2014, 11, 12)
				@event.link.should_not eq("www.example.com/test")
			end
			it "re-renders the edit method" do
				put :update, id: @event, event: attributes_for(:invalid_event)
				response.should render_template :edit
			end
		end
	end













end