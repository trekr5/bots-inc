require 'spec_helper'

#require 'capybara/rspec'


feature "HomePageShow" do
  scenario "shows the text View my basket on this page" do
     visit '/'
      expect(page).to have_content 'View My Basket'
  end
end 
