class Node
  attr_reader :element, :nextNode
  def initialize(element)
    @element = element
    @nextNode = nil
  end

  def insert_after(other_node)
    @nextNode = other_node
  end

  def remove_after
    @nextNode = nil
  end
end
