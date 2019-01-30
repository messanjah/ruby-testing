require "rails_helper"

RSpec.describe "User registers" do
  scenario "visiting the registration page" do
    visit "/users/register"

    expect(page).to have_field("email")
  end
end

