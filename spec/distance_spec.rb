require 'spec_helper'

describe 'Distance' do
  it 'calculates the distant' do
    expect(Distance.new('sample.txt').run).to be(11)
  end

  it 'parses the two lists of numbers' do
    distance = Distance.new('sample.txt')
    expect(distance.list_one).to eq([1, 2, 3, 3, 3, 4])
  end
end
