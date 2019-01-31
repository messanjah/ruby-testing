class UserMailer < ApplicationMailer
  def register
    @offers = params.fetch(:offers, [])

    mail(to: params[:email], subject: 'Hello world!')
  end
end
