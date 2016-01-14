require 'spec_helper'

describe RuboCop::Cop::Blueapron::TimeNowUtc do
  subject(:cop) { described_class.new }

  it 'reports offense when Time.now is not interpreted as UTC' do
    inspect_source(cop, "def foo\n Time.now\n end")
    expect(cop.offenses.size).to eq(1)
    expect(cop.offenses.map(&:line).sort).to eq([2])
    expect(cop.messages).to eq(['Time.now should be interpreted as UTC.'])
  end

  it 'does not report offense when Time.now is interpreted as UTC' do
    inspect_source(cop, "def foo\n Time.now.utc\n end")
    expect(cop.offenses).to be_empty
  end
end
