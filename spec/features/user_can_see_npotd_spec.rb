require 'rails_helper'

describe 'As a User' do
  it 'can see the Nasa Pic of the Day' do
    user = User.create!(first_name: 'Billy', last_name: 'Johns', password: 'password')
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit root_path

    expect(current_path).to eq(root_path)

    within(".nasa-picot-day") do
      expect(page).to have_content("Nasa Pic Of The Day")
      expect(page).to have_content("Title:")
      expect(page).to have_content("Date:")
      expect(page).to have_content("Description:")
    end
  end
end
