require 'spec_helper'

describe "Event Pages" do

	subject { page }

  describe "List Events" do

    before { visit events_path}

    describe "Titles" do
        it { should have_content('Events') }
    	it { should have_selector( 'h1', text: 'List of Events')}
    end

  end

  describe "Add Events" do
    
  end

  describe "Delete Events" do
    
  end



end
