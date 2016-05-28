=begin
MySet#new(): Instantiate a new empty MySet.
MySet#add(element): Add an element to the set (if necessary)
MySet#remove(element): Remove element from the set if it's present
MySet#contains?(element): Answer whether or not element is in the set
MySet#size: Return the size of the set

MySet#union(other_set): Return a new set that is the union of this set and other_set
MySet#intersection(other_set): Return a new set that is the intersection of this set and other_set
MySet#difference(other_set): Return a new set that contains the elements in the set that aren't in other_set
MySet#subset?(other_set): Answers whether or not other_set is a subset of this set
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
    for i in 0...secret_size
      @da_set.set(i, nil) if element == @da_set.get(i)
    end
  end

  def contains?(element)
    begin
      for i in 0...secret_size
        return true if element == @da_set.get(i)
      end
    rescue
    end
    return false
  end

  def size
    count = 0
    for i in 0...secret_size
      count += 1 unless @da_set.get(i) == nil
    end
    return count
  end

  #  MySet#union(other_set): Return a new set that is the union of this set and other_set
  def union(anotha_one)
    new_set = MySet.new
    for i in 0...secret_size
      new_set.add(@da_set.get(i)) unless @da_set.get(i) == nil
    end

    for i in 0...anotha_one.secret_size
      # anotha_one.element_at_index(i) == nil ? nil : new_set.contains?(anotha_one.element_at_index(i)) ? nil : new_set.add(anotha_one.element_at_index(i))

      unless anotha_one.element_at_index(i) == nil
        new_set.add(anotha_one.element_at_index(i)) unless new_set.contains?(anotha_one.element_at_index(i))
      end
    end

    return new_set
  end

  # MySet#intersection(other_set): Return a new set that is the intersection of this set and other_set
  def intersection(anotha_one)
    new_set = MySet.new

    if secret_size > anotha_one.secret_size
      bigger_set = self
      smaller_set = anotha_one
    else
      bigger_set = anotha_one
      smaller_set = self
    end

    for i in 0...bigger_set.secret_size
      da_element = bigger_set.element_at_index(i)
      new_set.add(da_element) if smaller_set.contains?(da_element)
    end

    return new_set
  end

  # MySet#difference(other_set): Return a new set that contains the elements in the set that aren't in other_set
  def difference(anotha_one)
    new_set = MySet.new

    for i in 0...secret_size
      unless element_at_index(i) == nil
        new_set.add(self.element_at_index(i)) if !anotha_one.contains?(element_at_index(i))
      end
    end

    return new_set
  end

  # MySet#subset?(other_set): Answers whether or not other_set is a subset of this set
  def subset?(anotha_one)
    return false if anotha_one.size == 0
    for i in 0...anotha_one.secret_size
      return false if !self.contains?(anotha_one.element_at_index(i))
    end
    return true
  end

  protected

  def element_at_index(index)
    @da_set.get(index)
  end

  def secret_size
    @da_set.length
  end


end #of line
