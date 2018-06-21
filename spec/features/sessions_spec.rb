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

    it 'submits a form and logs a user in' do
      visit '/login'
      fill_in(:name => 'Emily')
      click_button 'Login'

      expect(page.current_path).to eq('http://example.com')
    end
  end

end
