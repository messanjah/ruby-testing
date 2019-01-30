class UserMailer < ApplicationMailer
  def register
    mail(to: 'foo@test.com', subject: 'Hello world!')
  end
end
