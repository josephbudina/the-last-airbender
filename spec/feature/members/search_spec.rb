require 'rails_helper'
describe 'Air Bender Api' do
  it 'searches for a member' do
    #   As a user,
    # When I visit "/"
    visit root_path
    # And I Select "Fire Nation" from the select field
    # (Note: Use the existing select field)
    find('#nav navbar-nav', from, element_nation).click_
    # And I click "Search For Members"
    # Then I should be on page "/search"
    # Then I should see the total number of people who live in the Fire Nation. (should be close to 100)
    # And I should see a list with the detailed information for the first 25 members of the Fire Nation.
    # And for each of the members I should see:
    # - The name of the member (and their photo, if they have one)
    # - The list of allies or "None"
    # - The list of enemies or "None"
    # - Any affiliations that the member has
    
  end
end