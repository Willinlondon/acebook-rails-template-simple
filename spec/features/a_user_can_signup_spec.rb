require 'rails_helper'

feature 'signup' do
  # Review this test once log in is working & merged. False postive expectation. Should see log out or something
  scenario 'a user can sign up to 8book' do
    visit('/')
    fill_in('first_name', with: 'John')
    fill_in('last_name', with: 'Wick')
    fill_in('email', with: 'kissmygun@test.com')
    fill_in('password', with: 'test')
    check('terms')
    click_button('Sign Up!')
    expect(page).to have_content('Email') #hard coded
  end
end
