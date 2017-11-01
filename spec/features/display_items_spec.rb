require 'rails_helper'

feature 'Items' do
  scenario 'reaches root page' do
    visit '/'

    expect(page.status_code).to eq(200)

    within('h1') do
      expect(page).to have_content('Items')
    end
  end
end

