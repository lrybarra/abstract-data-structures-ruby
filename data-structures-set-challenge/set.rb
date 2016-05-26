=begin
MySet#new(): Instantiate a new empty MySet.
MySet#add(element): Add an element to the set (if necessary)
MySet#remove(element): Remove element from the set if it's present
MySet#contains?(element): Answer whether or not element is in the set
MySet#size: Return the size of the set
=end

require_relative 'array_list'

class MySet
  def initialize
    @da_set = ArrayList.new(0)
  end

  def add(element)
    return if self.contains?(element)
    @da_set.add(element)
  end

  def remove(element)
    return if !self.contains?(element)
    for i in 0...self.secret_size
      if element == @da_set.get(i)
        @da_set.set(i, nil)
      end
    end
  end

  def contains?(element)
    begin
      for i in 0...self.secret_size
        return true if element == @da_set.get(i)
      end
    rescue
    end
    return false
  end

  def size
    count = 0
    for i in 0...self.secret_size
      count += 1 unless @da_set.get(i) == nil
    end
    return count
  end

  def secret_size
    @da_set.length
  end
end
