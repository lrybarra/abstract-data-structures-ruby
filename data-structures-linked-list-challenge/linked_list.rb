require_relative 'node'

class LinkedList
  def initialize
    @firstNode = nil
  end

  def insert_first(element)
    p "Inserting First!!"
    tempNode = @firstNode
    @firstNode = Node.new(element)
    unless @firstNode == nil
      @firstNode.insert_after(tempNode)
    end
    p "First Node has " + @firstNode.element.to_s
  end

  def remove_first
    p "Removing First!!"
    node = @firstNode

    return node if node == nil

    if node.nextNode == nil
      @firstNode = nil
    else
      node.remove_after
      @firstNode = @firstNode.nextNode
    end
    return node
  end

  def insert_last(element)
    node = Node.new(element)
    # find last node
    if @firstNode == nil
      @firstNode = node
    else
      currentNode = @firstNode
      until currentNode.nextNode == nil
        previousNode = currentNode
        currentNode = currentNode.nextNode
      end
      currentNode.insert_after(node)
    end
  end

  def remove_last
    currentNode = @firstNode

    return currentNode if currentNode == nil

    until currentNode.nextNode == nil
      previousNode = currentNode
      currentNode = currentNode.nextNode
    end

    if currentNode == @firstNode
      @firstNode = nil
    else
      previousNode.remove_after
    end
    return currentNode
  end

  def get(index)
    count = 0
    currentNode = @firstNode

    until currentNode == nil || count == index
      count += 1
      currentNode = currentNode.nextNode
    end

    return currentNode
  end

  def size
    count = 0

    currentNode = @firstNode

    until currentNode == nil
      count += 1
      currentNode = currentNode.nextNode
    end

    return count
  end

end

myLinkedList = LinkedList.new
p "size is currently " + myLinkedList.size.to_s
p myLinkedList.remove_first
myLinkedList.insert_first("Uber")
myLinkedList.insert_first("Skrr")
p myLinkedList.get(0)
p myLinkedList.get(1)
p myLinkedList.get(2)
p "size is currently " + myLinkedList.size.to_s
