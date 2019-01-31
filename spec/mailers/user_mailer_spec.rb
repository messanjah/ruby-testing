require 'rails_helper'

RSpec::Matchers.define :have_subject do |expected|
  match do |actual|
    mail_message = actual
    mail_message.subject == expected
  end
end

RSpec.describe UserMailer do
  describe '#register' do
    it 'generates an email' do
      expect(UserMailer.with(email: 'procore@procore.com').register.to_s).to include('Hello world!')
    end
    it 'delivers to correct recipient' do
      expect(UserMailer.with(email: 'procore@procore.com').register.to).to contain_exactly 'procore@procore.com'
    end
  end

  describe '#register' do
    subject { described_class.with(email: email).register }
    let(:email) { 'procore@procore.com' }
    it { is_expected.to be }
    it { is_expected.to have_subject 'Hello world!' }
  end
end
