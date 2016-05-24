=begin
Queue#new(): Instantiate a new Queue
Queue#enqueue(element): Add a new element to the queue
Queue#dequeue: Remove and return the first element in the queue
Queue#peel: Return (but do not remove) the first element in the queue
Queue#empty?: Answer whether or not the queue is empty
=end

require_relative 'linked_list'

class Queue
  def initialize
    @mi_queue = LinkedList.new
  end

  def enqueue(element)
    @mi_queue.insert_last(element)
  end

  def dequeue
    @mi_queue.size == 0 ? nil : @mi_queue.remove_first.element
  end

  def peel
    @mi_queue.size == 0 ? nil : @mi_queue.get(@mi_queue.size - 1).element
  end

  def empty?
    @mi_queue.size == 0 ? true : false
  end
end
