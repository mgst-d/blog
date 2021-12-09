def sign_up
    visit new_user_registration_path

    fill_in :user_email, with: 'user@example.com'
    fill_in :user_username, with: 'mike'
    fill_in :user_password, with: 'password123456'
    fill_in :user_password_confirmation, with: 'password123456'

    click_button 'Sign up'
end