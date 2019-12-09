require 'rspec'
require_relative 'dog'

RSpec.describe Dog do

  describe 'Dog.all' do
    it 'returns all instances of Dog' do
      max = Dog.new
      fido = Dog.new
      boy = Dog.new
      expect(Dog.all).to include(max, fido, boy)
    end
  end

  describe '#bark' do
    it 'returns the string "Woof!"' do
      expect(subject.bark).to eql('Woof!')
    end
  end

  describe '#feed' do
    context "when subject level is hungry"
      subject { described_class.new(hunger_level: 7) }

      it 'is no longer hungry' do
        subject.feed
        expect(subject).to_not be_hungry
      end
  end

  describe '#hungry?' do
    context 'when hunger_level is more than 5' do
      subject { described_class.new(hunger_level: 7) }

      it 'returns true' do
        expect(subject).to be_hungry
      end
    end

    context 'hunger_level is 5 or less' do
      subject { described_class.new(hunger_level: 5) }

      it 'returns false' do
        expect(subject).to_not be_hungry
      end
    end
  end

  describe '#wag_tail' do
    it 'returns true if tail is wagging' do
      dog = described_class.new(tail_wagging: false)

      expect(dog.wag_tail).to eql(true)
    end
  end
end
