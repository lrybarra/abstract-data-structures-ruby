require_relative 'node'

class LinkedList
  def initialize
    @firstNode = nil
  end

  def insert_first(element)
    #p "Inserting First!!"
    tempNode = @firstNode
    @firstNode = Node.new(element)
    unless @firstNode == nil
      @firstNode.insert_after(tempNode)
    end
    #p "First Node has " + @firstNode.element.to_s
  end

  def remove_first
    #p "Removing First!!"
    node = @firstNode

    return node if node == nil

    if node.nextNode == nil
      p "first node now nil"
      @firstNode = nil
    else
      @firstNode = @firstNode.nextNode
      node.remove_after
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
    raise 'OutOfBoundsException' if index > (self.size - 1)

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

  def insert(index, element)
    return nil if index > size

    count = 0

    currentNode = @firstNode

    until count == index
      count += 1
      previousNode = currentNode
      currentNode = currentNode.nextNode
    end

    node = Node.new(element)
    previousNode.insert_after(node)
    node.insert_after(currentNode)
    return element

  end

  def set(index, element)
    return nil if index >= size

    count = 0

    currentNode = @firstNode

    until count == index
      count += 1
      currentNode = currentNode.nextNode
    end

    currentNode.element = element

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
p myLinkedList.set(1, "hawoe")
p myLinkedList.get(1)
p myLinkedList.insert(1, "Yoooo")
p myLinkedList.get(1)
p myLinkedList.get(2)
