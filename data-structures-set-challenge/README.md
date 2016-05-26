# Sets

Like a List, a [Set](http://en.wikipedia.org/wiki/Set_%28abstract_data_type%29) is a collection of elements. Sets have two key characteristics that make them stand apart from other Collection types like List.

 * **Sets are unordered**: Regardless of how data enters a Set, the ordering of its elements is _not_ guaranteed. This doesn't mean some order _can't_ exist underneath, but the data structure makes no promises regarding whether elements are ordered internally.
 * **Sets contain only unique elements**: There are no duplicates in a Set. If you add the string "hello" to a Set twice, there will only be one element ("hello") inside of it.

## Why is this important?

The notion of Sets comes directly from [Set Theory](http://en.wikipedia.org/wiki/Set_theory) in math. Sets let us reason about collections of data as first class citizens themselves.

You're already familiar with classic Set operations like `union` and `intersection` from your experience with SQL. You've produced _subsets_ of arrays in Ruby using `#select` or `#filter`. You might have even used Ruby's `Hash` _as_ a set by relying on the fact that setting the same key in a Hash twice is idempotent.

Sets can be much faster for specific operations than a List. For example, most implementations of Sets (but probably not yours) offer a constant-time membership check.

## Release 1: Implement `MySet`

Implement and write RSpec tests for a `MySet` class that conforms to the following interface:

### Interface
- `MySet#new()`: Instantiate a new empty MySet.
- `MySet#add(element)`: Add an element to the set (if necessary)
- `MySet#remove(element)`: Remove `element` from the set if it's present
- `MySet#contains?(element)`: Answer whether or not `element` is in the set
- `MySet#size`: Return the size of the set

Pick one of _your_ existing data structures to implement `MySet` under the hood. Justify the structure you choose in the comments.

## Release 2: Set Operations

We have the basics, but let's expand our MySet class to include classic MySet operations.

Implement and write RSpec tests for the following methods:

### Interface

- `MySet#union(other_set)`: Return a new set that is the union of this set and `other_set`
- `MySet#intersection(other_set)`: Return a new set that is the intersection of this set and `other_set`
- `MySet#difference(other_set)`: Return a new set that contains this elements in the set that aren't in `other_set`
- `MySet#subset?(other_set)`: Answers whether or not `other_set` is a subset of this set

Be sure to include tests for operations involving empty sets!

## Release 3: Complexity

Determine the big-O complexity of each of your methods. Create a file `complexity.md` and write the big-O for each method, explaining why.

Be sure to note the _best case_ and _worst case_ complexity for each method.

## Stretch: Constant Time Membership Check

A set's membership check (`MySet#contains?`) can be made to be constant-time. Return to this challenge after completing the Hash data structure challenge and see if you can make `#contains?` O(1).
