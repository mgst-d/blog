require 'rails_helper'

feature 'Contact_creation' do
  scenario 'allows access to contacts page' do
    visit '/contacts'

    expect(page).to have_content 'Your contacts'
  end
end