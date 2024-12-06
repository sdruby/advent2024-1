require 'spec_helper'

describe 'Similarity' do
  it 'calculates the distant' do
    expect(Similarity.new('sample.txt').run).to be(31)
  end

  it 'parses the two lists of numbers' do
    distance = Similarity.new('sample.txt')
    expect(distance.list_one).to eq([1, 2, 3, 3, 3, 4])
  end
end
