require 'rails_helper'

describe "Homepage Feature" do
  it 'shows the user a link if they are not logged in' do
    visit '/'

    expect(page).to have_link("Login")
  end

end
