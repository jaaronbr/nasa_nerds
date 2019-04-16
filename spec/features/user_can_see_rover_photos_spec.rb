require 'rails_helper'

describe 'As a User' do
  it 'can see the Rover Footage' do
    user = User.create!(first_name: 'Billy', last_name: 'Johns', password: 'password')
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit root_path

    expect(current_path).to eq(root_path)

    within(".rover-footage") do
      expect(page).to have_content("Rover Footage")
      expect(page).to have_content("Earth Date:")
      expect(page).to have_content("Rover Name:")
    end
  end
end
