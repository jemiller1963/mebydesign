require 'spec_helper'

describe "Static Page" do

	let(:base_title) { "Me by Design" }
  
	describe "Home page" do

	  it "should have the content 'Me by Design" do	  	
	  	visit root_path
	  	expect(page).to have_content('Me by Design')
	  end

	  it "should have title base title " do
	  	visit root_path
	  	expect(page).to have_title("#{base_title} | Home")	  	
	  end

	  it "should not have a custom page title" do
	  	visit root_path
	  	expect(page).not_to have_title('| Home')
	  end
	  
	end

	describe "About page" do

	  it "should have the content 'About Me by Design" do	  	
	  	visit '/static_pages/about'
	  	expect(page).to have_content('About Me by Design')
	  end

	  it "should have the title 'About' " do
	  	visit '/static_pages/about'
	  	expect(page).to have_title("#{base_title} | About")
	  end

	  it "should not have a custom page title" do
	  	visit '/static_pages/about'
	  	expect(page).not_to have_title('| About')
	  end

	end
	
	describe "How to Order page" do

	  it "should have the content 'How to Order" do	  	
	  	visit '/static_pages/how_to_order'
	  	expect(page).to have_content('How to Order')
	  end

	   it "should have the title 'How to Order'" do
	  	visit '/static_pages/how_to_order'
	  	expect(page).to have_title("#{base_title} | How to Order")	  	
	  end

	  it "should not have a custom page title" do
	  	visit '/static_pages/how_to_order'
	  	expect(page).not_to have_title('| How to Order')
	  end


	end


end