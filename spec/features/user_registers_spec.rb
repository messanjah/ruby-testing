require "rails_helper"

RSpec.describe "User registers" do
  let(:offer) { double(url: "url/to/offer") }
  scenario "visiting the registration page" do
    visit "/users"

    fill_in(:email, with: "email@email.com")

    click_button("Register")

    expect(ActionMailer::Base.deliveries.size).to eq(1)

    mail = ActionMailer::Base.deliveries.last

    expect(mail.to_s).to include offer.url
  end
end
