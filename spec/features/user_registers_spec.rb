require "rails_helper"

RSpec.describe "User registers" do
  let(:offer) { double(url: "url/to/offer") }
  scenario "visiting the registration page" do
    allow_any_instance_of(OfferService).to receive(:fetch).and_return([offer])

    visit "/users"

    fill_in(:email, with: "email@email.com")

    click_button("Register")

    expect(ActionMailer::Base.deliveries.size).to eq(1)

    mail = ActionMailer::Base.deliveries.last

    expect(mail.to_s).to include offer.url
  end
end
