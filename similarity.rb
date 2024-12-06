require_relative 'list_processor'

class Similarity < ListProcessor

  def initialize(input)
    super
    @lambda = ->(l1, l2) { l1 * list_two.count(l1) }
  end
end
