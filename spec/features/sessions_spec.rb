require 'rails_helper'

describe 'Sessions Features' do 
  context 'login interface' do 
    it 'renders a view with a form with a name text field' do 
      visit '/'
      click_link "Login"

      expect(page.status_code).to eq(200)
      expect(page).to have_selector('form')
      expect(page).to have_text_field(:name)
    end 
  end 

end 