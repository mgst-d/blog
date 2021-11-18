require 'rails_helper'

feature 'Contact_creation' do
  scenario 'allows access to contacts page' do
    visit '/contacts'

    expect(page).to have_content I18n.t('contacts.contact_us')
  end
  scenario 'allows guest to create contact' do
    
  end

end