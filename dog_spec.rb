require 'rspec'
require_relative 'dog'

RSpec.describe Dog do
  describe '#bark' do
    it 'returns the string "Woof!"' do
      expect(subject.bark).to eql('Woof!')
    end
  end

  describe '#feed' do
    subject { described_class.new(hunger_level: 7) }

    it 'is no longer hungry' do
      subject.feed
      expect(subject).to_not be_hungry
    end
  end

  describe '#hungry?' do
    it 'returns true if hunger_level is more than 5' do
      dog = described_class.new(hunger_level: 7)
      expect(dog).to be_hungry
    end

    it 'returns false if hunger_level is 5 or less' do
      dog = described_class.new(hunger_level: 5)
      expect(dog).to_not be_hungry
    end
  end

  describe '#wag_tail' do
    it 'returns true if tail is wagging' do
      dog = described_class.new(tail_wagging: false)

      expect(dog.wag_tail).to eql(true)
    end
  end
end
