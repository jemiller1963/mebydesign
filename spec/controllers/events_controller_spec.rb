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

	describe "#index" do
		it "populates an array of events" do
			event = create(:event)
			get :index
			assigns(:events).should eq([event])
		end
		it "renders the :index view" do
			get :index
			response.should render_template :index
		end
	end


end