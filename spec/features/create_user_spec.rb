require 'rails_helper'

describe "A new user" do

  it "has a first and last name, email address and SSN" do
    visit "/"
    click_link "Create User"
    expect( current_path ).to eq new_user_path 
    fill_in 'First name', with: "John"
    fill_in 'Last name', with: "Doe"
    fill_in 'Email address', with: "John@example.com"
    fill_in 'Social security number', with: "123456789"
    click_button "Save"
    expect( current_path ).to eq users_path
    expect( page ).to have_content("John Doe")
    expect( page ).to have_content("John@example.com")
    expect( page ).to_not have_content("123456789")
  end


end