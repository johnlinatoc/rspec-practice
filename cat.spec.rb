require 'rspec'
require_relative 'cat'

describe Cat do
  describe '#meow' do
    subject {described_class.new}

    it 'returns the string "Meow!"' do
      expect(subject.meow).to eq("Meow!")
    end
  end
end
