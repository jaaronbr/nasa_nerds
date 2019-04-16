require 'rails_helper'

describe 'As a User' do
  it 'can see the Recent Notifications' do
    user = User.create!(first_name: 'Billy', last_name: 'Johns', password: 'password')
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit root_path

    expect(current_path).to eq(root_path)

    within(".current-notification") do
      expect(page).to have_content("Recent Notifications")
      expect(page).to have_content("Message Type:")
      expect(page).to have_content("Message ID:")
      expect(page).to have_content("Issue Time:")
      expect(page).to have_content("Notification:")
      expect(page).to have_content("Click Here for more info")
    end
  end
end
