class UserMailer < ApplicationMailer
  def register
    mail(to: params[:email], subject: 'Hello world!')
  end
end
