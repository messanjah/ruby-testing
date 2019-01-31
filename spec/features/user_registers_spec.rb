require "rails_helper"

RSpec.describe "User registers" do
  scenario "visiting the registration page" do
    visit "/users"

    fill_in(:email, with: "email@email.com")

    click_button("Register")

    expect(ActionMailer::Base.deliveries.size).to eq(1)
  end
end
