# Fixed Arrays

Way down deep, past the abstraction of Ruby, data you don't write to your hard drive is stored in _memory_. If you were in a lower-level language like C and you wanted an array, you would have to tell the computer "allocate an array for me that has space for 8 elements." In return, the operating system would give you a chunk of memory with room for 8 elements, _no more and no less_.

Eventually, every program on your system has to _pre-allocate_ the memory it wants to use. It can't say "give me an array with room for 8 elements, but I might need more later."

In other words, behind the scenes, there are no dynamically sized arrays. True arrays are just chunks of memory that you have to explicitly carve out of your system memory. They are a fixed size; you say how big they are up front and that's all you get. This is very different from the pseudo-arrays you're used to in Ruby or Javascript!

## Why is this important?

In high-level languages like Ruby, arrays can grow and shrink as you need them, but they're not "true" arrays. In low-level languages like C, fixed-size arrays are all you get.

All data structures are, ultimately, built upon fixed-size arrays, and to see this we'll need to create a more restricted Array in Ruby that can't grow.

In the course of this challenge you will implement your own `FixedArray` class to mimic the lower level fixed-size arrays. Your FixedArray will take a specific size when it's created and won't be able to grow to accommodate new elements. We will use this `FixedArray` class to build up progressively more advanced data structures. Think of it as a restrictive layer we're wrapping around a Ruby array to re-create the conditions of a lower-level language.

## Release 1: Implement `FixedArray`

Implement and write RSpec tests for the `FixedArray` class. The class must conform to the following interface:

### Interface
- `FixedArray#new(size)`: Instantiate a new FixedArray with space for `size` elements.
- `FixedArray#get(index)`: Get a value from the array at the specified index. Throw an `OutOFBoundsException` if the user tries to `get` a value at an index outside the bounds of the fixed array.
- `FixedArray#set(index, element)`: Set a value in the array at a specific index and return the element. Throw an `OutOFBoundsException` if the user tries to `set` a value at an index outside the bounds of the fixed array.

# Resources

* [Wikipedia: Array data type](http://en.wikipedia.org/wiki/Array_data_type#Abstract_arrays)
* [Wikipedia: Array data structure](http://en.wikipedia.org/wiki/Array_data_structure)
