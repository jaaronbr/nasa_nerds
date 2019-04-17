require 'rails_helper'

describe 'As a User' do
  it 'can login as a user' do

    visit root_path
    click_link "Login"

    expect(current_path).to eq(login_path)

    fill_in :first_name, with: "Miriam"
    fill_in :last_name, with: "Bailey"
    fill_in :password, with: "password"
    fill_in :password_confirmation, with: "password"

    click_button "Login"

    expect(current_path).to eq(root_path)
    expect(page).to have_content("Welcome Miriam")
    expect(page).to have_link("Logout")
    expect(page).to_not have_link("Login")
  end

  it 'can logout as a user' do

    visit root_path
    click_link "Login"

    expect(current_path).to eq(login_path)

    fill_in :first_name, with: "Miriam"
    fill_in :last_name, with: "Bailey"
    fill_in :password, with: "password"
    fill_in :password_confirmation, with: "password"

    click_button "Login"
    expect(current_path).to eq(root_path)

    click_link "Logout"
    expect(current_path).to eq(root_path)

    expect(page).to_not have_content("Welcome Miriam")
    expect(page).to have_link("Login")
  end
end
