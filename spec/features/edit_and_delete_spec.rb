require 'rails_helper'

describe "An existing user" do

  before do
    @user = create(:user)
  end

  it "can edit their name, email address and SSN" do
    visit "/"
    click_link "Jane Doe"
    click_link "Edit"
  end

end
