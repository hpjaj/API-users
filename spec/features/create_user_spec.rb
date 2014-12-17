require 'rails_helper'

describe "A new user" do

  it "has a first and last name, email address and SSN" do
    visit "/"
    click_link "Create User"
    
  end


end