require 'rails_helper'

describe 'Sessions Features' do
  context 'login interface' do
    it 'renders a view with a form with a name text field' do
      visit '/'
      click_link "Login"

      expect(page.status_code).to eq(200)
      expect(page).to have_selector('form')
      expect(page).to have_field('name', type: 'text')
    end

    it 'submits a form and logs a user in and redirects them to the homepage' do
      visit '/login'
      fill_in(:name, with: 'Emily')
      click_button 'Login'

      expect(page.current_path).to eq('http://example.com')
      expect(page).to have_content("Welcome, Emily")
    end

    it 'returns a user to the login page if the form submission is not valid' do
      visit '/login'
      click_button 'Login'

      expect(page.current_path).to include('/login')
      expect(page).to have_content("You must enter a name to login.")
    end
  end

  context 'logout interface' do
    before do
      visit '/login'
      fill_in(:name, with: 'Emily')
      click_button 'Login'
    end

    it '' do

    end
  end

end
