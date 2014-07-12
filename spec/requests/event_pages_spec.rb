require 'spec_helper'

describe "Event Pages" do

  before { visit events_path }

  # before do
  #   @event = FactoryGirl.create( event_name: 'Test Event 1', 
  #             description: 'Lorem ipsum', 
  #             sdate: '10/10/2014',
  #             edate: '10/12/2014',
  #             link: 'www.example.com')
  # end

	subject { page }

	describe "Navigation" do
		it { should have_selector( 'a', text: 'About')}
		it { should have_selector( 'a', text: 'Events')}
		it { should have_selector( 'a', text: 'Collections')}
		it { should have_selector( 'a', text: 'NEW - One of a Kind')}
		it { should have_selector( 'a', text: 'How to Order')}
	end	

    describe "List Events on Index" do
    before { visit events_path }

      let!(:older_event) do
        FactoryGirl.create( :event, created_at: 1.day.ago )
      end
      let!(:newer_event) do
        FactoryGirl.create( :event, created_at: 1.hour.ago )
      end

      it "should have the right Events in the right order" do
        expect(Event.all.to_a).to eq [newer_event, older_event]
      end

    end

  describe "Add Events" do

    before { visit new_event_path}

    describe "Titles" do
      it { should have_content('Events') }
    	it { should have_selector( 'h1', text: 'List of Events')}
    end

  end


  describe "Delete Events" do
    
  end


end
