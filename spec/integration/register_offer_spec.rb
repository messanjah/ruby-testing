require "rails_helper"
RSpec.describe "Offer in registration email" do
  it "Includes offer in registration email" do
    offer = double(url: "url/to/offer")

    message_body = UserMailer.with(email: "foo@bar.com", offers: [offer]).register.body

    expect(message_body).to include offer.url
  end
end
