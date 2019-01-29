require 'rails_helper'

RSpec.describe Book do
  describe '#new' do
    subject { described_class.new }
    it { is_expected.to be_an_instance_of(described_class) }
  end
end
