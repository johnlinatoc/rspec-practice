require 'rspec'
require_relative 'command_line_interface'

describe Command_line_interface do
  subject { described_class.new }

  context '#ask_name' do
    it 'takes in name and outputs it' do
      expect(STDOUT).to receive(:puts).with("What's your name?")
      subject.input.stub(:gets) { 'John' }
      expect(subject.ask_name).to eq('Welcome John!')
    end
  end
end
