require 'rails_helper'

describe 'As a Logged in User' do
  it 'can see button to favorite a photo of the day' do
    user = User.create!(first_name: 'Billy', last_name: 'Johns', password: 'password')
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit root_path

    within(".nasa-picot-day") do
      expect(page).to have_link('Add to Favorites')
      click_link "Add to Favorites"
      expect(current_path).to eq(users_path)
    end
  end
end
