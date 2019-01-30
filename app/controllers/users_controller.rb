class UsersController < ApplicationController
  def index
  end

  def register
    UserMailer.with(email: params["email"]).register.deliver_now
  end
end
