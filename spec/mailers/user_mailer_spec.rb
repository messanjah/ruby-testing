require 'rails_helper'

RSpec.describe UserMailer do
  describe '#register' do
    it 'generates an email' do
      expect(UserMailer.register.to_s).to include('Hello world!') 
    end
  end
end
