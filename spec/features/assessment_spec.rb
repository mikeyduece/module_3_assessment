require 'rails_helper'

feature 'User' do
  scenario 'sees stores within 25 miles' do
    visit '/'

    fill_in 'q', with: '80202'
    click_on('Locate')

    expect(current_path).to eq('/search')
    expect(page).to have_content('17 Total Stores')
    within('.store') do
      expect(page).to have_content('.city')
      expect(page).to have_content('.name')
      expect(page).to have_content('.distance')
      expect(page).to have_content('.phone')
      expect(page).to have_content('.type')
    end
  end
end

# As a user
# When I visit "/"
# And I fill in a search box with "80202" and click "search"
# Then my current path should be "/search" (ignoring params)
# And I should see stores within 25 miles of 80202
# And I should see a message that says "17 Total Stores"
# And I should see exactly 10 results (There are 17 stores within 25 miles. We want to display 10 on this page and 7 on the next. Get the first page to work first from start to finish and worry about pagination later.)
# And I should see the long name, city, distance, phone number and store type for each of the 10 results
# ```
#
