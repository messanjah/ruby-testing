require "rails_helper"
RSpec.describe "Offer in registration email" do
  it "Includes offer in registration email" do
    UserMailer.with(email: "foo@bar.com").register.body
  end
end
