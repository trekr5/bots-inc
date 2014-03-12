require 'spec_helper'

#require 'capybara/rspec'


feature "index page" do
  scenario "shows the text View my basket on this page" do
     visit '/items'
      expect(page).to have_content 'View my basket'
  end
end 
