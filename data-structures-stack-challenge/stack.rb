=begin
Stack#push(element): Add a new element to the top of the stack
Stack#pop: Remove and return the top element of the stack
Stack#top: Return (but do not remove) the top element of the stack
Stack#empty?: Answer whether or not the stack is empty
=end

require_relative 'linked_list'

class Stack
  def initialize
    @mi_lista = LinkedList.new
  end

  def push(element)
    @mi_lista.insert_last(element)
  end

  def pop
    @mi_lista.size == 0 ? nil : @mi_lista.remove_last.element
  end

  def top
    @mi_lista.size == 0 ? nil : @mi_lista.get(@mi_lista.size - 1).element
  end

  def empty?
    @mi_lista.size == 0 ? true : false
  end
end
