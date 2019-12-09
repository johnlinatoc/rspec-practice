require 'rspec'
require_relative 'cat'

describe Cat do
  subject {described_class.new(name: 'Max')}

  describe '#initialize' do
    it 'takes in a name as a string' do
      name = 'Max'
      expect(subject).to have_attributes(name: name)
    end
  end

  describe '#meow' do
    it 'returns the string "Meow!"' do
      expect(subject.meow).to eq("Meow!")
    end
  end
end
