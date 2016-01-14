require 'spec_helper'

describe RuboCop::Cop::Blueapron::DateTimeNowUtc do
  subject(:cop) { described_class.new }

  it 'reports offense when DateTime.now is not interpreted as UTC' do
    inspect_source(cop, "def foo\n DateTime.now\n end")
    expect(cop.offenses.size).to eq(1)
    expect(cop.offenses.map(&:line).sort).to eq([2])
    expect(cop.messages).to eq(['DateTime.now should be interpreted as UTC.'])
  end

  it 'does not report offense when DateTime.now is interpreted as UTC' do
    inspect_source(cop, "def foo\n DateTime.now.utc\n end")
    expect(cop.offenses).to be_empty
  end
end
