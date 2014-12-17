require 'rails_helper'

describe "An existing user" do

  before do
    @user = create(:user)
  end

  it "can edit their name, email address and SSN" do
    visit "/"
    click_link "Jane Doe"
    click_link "Edit"
    fill_in 'First name', with: "Janie"
    fill_in 'Last name', with: "Doer"
    fill_in 'Email address', with: "Janie@example.com"
    fill_in 'Social security number', with: "997654321"
    click_button "Save"
    expect( current_path ).to eq users_path
    expect( page ).to have_content("Janie Doer")
    expect( page ).to have_content("Janie@example.com")
    expect( page ).to_not have_content("997654321")
  end

end
