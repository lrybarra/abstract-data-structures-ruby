class ArrayList
  def initialize(size)
    @array = FixedArray.new(size)
  end

  def add(element)
    size = @array.size
    @arrayNew = FixedArray.new(size+1)
    
    for i in 0...size
      @arrayNew.set(i, @array.get(i))
    end

    @arrayNew.set(size, element)

    @array = @arrayNew
    element
  end

  def insert(index, element)
    @array.set(index, element)
  end

  def get(index)
    raise 'OutOfBoundsException' if @array.get(index) == nil
    @array.get(index)
  end

  def set(index, element)
    raise 'OutOfBoundsException' if @array.get(index) == nil
    @array.set(index, element)
  end

  def length
    @array.size
  end
end

class FixedArray

  def initialize(size)
    @arraySize = size
    @array = Array.new(size)
  end

  def get(index)
    # begin
      raise 'OutOfBoundsException' if index > @arraySize - 1 || index < 0
    # rescue
    #   puts 'what it do'
    # end
    @array[index]
  end

  def set(index, element)
    raise 'OutOfBoundsException' if index > @arraySize - 1 || index < 0
    @array[index] = element
  end

  def size
    return @arraySize
  end

end

jayda = ArrayList.new(10)
p jayda.length
jayda.insert(1, "yoo")
p jayda.get(1)
p jayda.get(1)
jayda.add("ayyyee")
