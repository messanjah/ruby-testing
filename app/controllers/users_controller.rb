class UsersController < ApplicationController
  def index
  end

  def register

    UserMailer.
      with(
        email: params["email"],
        offers: OfferService.new.fetch
      ).
      register.deliver_now
  end
end
