require 'rails_helper'

describe "A new user" do

  it "has a first and last name, email address and SSN" do
    visit "/"
    click_link "Create User"
    expect( current_path ).to eq new_user_path 
    fill_in 'First name', with: "John"
    
  end


end