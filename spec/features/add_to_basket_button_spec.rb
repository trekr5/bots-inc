require 'spec_helper'

feature "Add to basket button" do
  let(:user) do
    User.create!(email: "eve@example.com",
                 password: 'password',
                 password_confirmation: 'password')
  end
  let!(:item) do
    Item.create!(name: "Spanner Set", price: 4500) 
  end
  scenario "seeing an item and clicking add" do
    login_as(user)
    visit('/')

    click_link "Browse our items"

    within "#item-#{item.id}" do
      click_button "Add to basket"
    end

    page.should have_content "Spanner Set added to basket."
  end
end
