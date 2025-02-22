require 'rails_helper'
describe 'Air Bender Api' do
  it 'searches for a member' do
    visit root_path

    # find('#nation').click
    # find('#nation', :element_nation, text: 'Fire Nation' ).click

    # click_on 'Search For Members'
    visit search_path

    expect(current_path).to eq(search_path)
    # Then I should see the total number of people who live in the Fire Nation. (should be close to 100)
    expect(page).to have_content('20')
    # And I should see a list with the detailed information for the first 25 members of the Fire Nation.
    # And for each of the members I should see:
    # - The name of the member (and their photo, if they have one)
    expect(page).to have_content('Chan (Fire Nation admiral)')
    # - The list of allies or "None"
    expect(page).to have_content('Oza')
    # - The list of enemies or "None"
    expect(page).to have_content('Water Tribes')
    # - Any affiliations that the member has
    expect(page).to have_content('Fire Nation Fire Nation train')
    
  end
end