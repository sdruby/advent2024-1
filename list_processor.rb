require 'debug'

class ListProcessor
  attr_accessor :input, :lambda, :list_one, :list_two
  def initialize(input)
    @input = input
    @list_one, @list_two = parse_lines
    @list_one.sort!
    @list_two.sort!
  end

  def parse_lines
    File.read(input).each_line.map{ |line|
      line.split.map(&:to_i)
    }.transpose
  end

  def run
    list_one.each.with_index.inject(0) do |acc, (l1, i)|
      l2 = list_two[i]
      acc + @lambda.call(l1, l2)
    end
  end
end
