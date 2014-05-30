require 'spec_helper'

describe "Static Page" do

	subject { page }

	let(:base_title) { "Me by Design" }
  
	describe "Home page" do

		before{ visit root_path }

		it { should have_content('Me by Design')}

		it { should have_title("#{ base_title } | Home")}

			describe "Navigation" do
				it { should have_selector( 'a', text: 'About')}
				it { should have_selector( 'a', text: 'Events')}
				it { should have_selector( 'a', text: 'Collections')}
				it { should have_selector( 'a', text: 'NEW - One of a Kind')}
				it { should have_selector( 'a', text: 'How to Order')}
			end

 
	end

	describe "About page" do

		before { visit about_path }

		# it { should have_content('About Me by Design')}

		it { should have_title("#{ base_title } | About")}

		it { should have_selector( 'h1', text: 'About Me by Design')}


	end
	
	describe "How to Order page" do

		before { visit how_to_order_path }

		it { should have_content('How to Order')}

		it { should have_title("#{ base_title } | How to Order")}


	end


end