require 'spec_helper'

describe "Static Page" do

	let(:base_title) { "Me by Design" }
  
	describe "Home page" do

		before{ visit root_path }

		it "should have the content 'Me by Design" do	  	
		  	expect(page).to have_content('Me by Design')
		end

		it "should have title base title " do
		  	expect(page).to have_title("#{base_title} | Home")	  	
		end
	  
	end

	describe "About page" do

		before { visit about_path }

	  	it "should have the content 'About Me by Design" do	  	
	  		expect(page).to have_content('About Me by Design')
	  	end

	  	it "should have the title 'About' " do
	  		expect(page).to have_title("#{base_title} | About")
	  	end


	end
	
	describe "How to Order page" do

		before { visit how_to_order_path }

	  	it "should have the content 'How to Order" do	  	
	  		expect(page).to have_content('How to Order')
	  	end

	   	it "should have the title 'How to Order'" do
	  		expect(page).to have_title("#{base_title} | How to Order")	  	
	  	end


	end


end