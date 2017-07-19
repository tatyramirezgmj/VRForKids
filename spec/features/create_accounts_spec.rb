require 'rails_helper'

RSpec.feature "CreateAccounts", type: :feature do
  # pending "add some scenarios (or delete) #{__FILE__}"
  it "successfully creates account" do
    #visit home page
    visit root_path

    #click Register
    click_link "Register"

    #fill out with info
      fill_in "Username", with: "Ned_Stark"
      fill_in "Email", with: "Ned@StarkEnterprises.co"
      fill_in "Password", with: "TheNorthRemembers"
      # fill_in "Confirm Password", with: "TheNorthRememebers"

    #click "create account"
      click_button "Signup for Lulz"
    #return to home
    ["Ned_Stark", "Ned@StarkEnterprises.co", "TheNorthRemembers"].each do |content|
      expect(page).to have_content content
    end 

    #click index


    #Welcome to VR
  end



end



# expect(page).to have_content "Create Account"
