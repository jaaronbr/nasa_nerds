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

  it 'can see saved picture info printed on show page' do
    user = User.create!(first_name: 'Billy', last_name: 'Johns', password: 'password')
    user.nasa_pics.create!(title: "nice", description: "1", image: "www.hey.com", date_taken: "today")
    user.nasa_pics.create!(title: "okay", description: "2", image: "www.hey2.com", date_taken: "today")
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit users_path(user)

    expect(page).to have_content('Hello Billy')
    expect(page).to have_content('Title')
    expect(page).to have_content('Description')
    expect(page).to have_content('Date Taken')
    expect(page).to have_content('Date Saved')
  end

  it 'can delete favorite from show page' do
    user = User.create!(first_name: 'Billy', last_name: 'Johns', password: 'password')
    user.nasa_pics.create!(title: "carmen", description: "12", image: "www.hey.com", date_taken: "today")
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit users_path(user)

    click_link "Delete Favorite"

    expect(current_path).to eq(users_path)
  end
end
