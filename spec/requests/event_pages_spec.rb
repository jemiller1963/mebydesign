require 'spec_helper'

describe "Event Pages" do

    before { visit events_path }

	subject { page }

	describe "Navigation" do
		it { should have_selector( 'a', text: 'About')}
		it { should have_selector( 'a', text: 'Events')}
		it { should have_selector( 'a', text: 'Collections')}
		it { should have_selector( 'a', text: 'NEW - One of a Kind')}
		it { should have_selector( 'a', text: 'How to Order')}
	end	

  describe "Add Events" do

    before { visit events_path}

    describe "Titles" do
        it { should have_content('Events') }
    	it { should have_selector( 'h1', text: 'List of Events')}
    end

  end

  describe "List Events" do
    
  end

  describe "Delete Events" do
    
  end



end
