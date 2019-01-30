require 'rails_helper'

RSpec.describe UserMailer do
  describe '#register' do
    it 'generates an email' do
      expect(UserMailer.with(email: 'procore@procore.com').register.to_s).to include('Hello world!')
    end
    it 'delivers to correct recipient' do
      expect(UserMailer.with(email: 'procore@procore.com').register.to).to contain_exactly 'procore@procore.com'
    end
  end
end
