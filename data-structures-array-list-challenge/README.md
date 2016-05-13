# Array Lists

By now you should have a [Fixed Array class](../../../data-structures-array-challenge). Fixed Arrays are a fundamental building block of data structures, but they're not always the most convenient. From here on out, if you read the term "array" take it to mean "an array with a fixed size."

## The Array List

In this challenge we're going to create an `ArrayList` class. An Array List isn't a special kind of array, it's a _list_ of things that uses an array underneath. Lists are different from arrays because lists can grow.

Note: `ArrayList` is a different data structure than a `FixedArray`, there is no inheritance relationship between them. It's unlikely you'll be using inheritance in any of challenges.

The `ArrayList` will be a data structure that allows you to create and add to a List of "infinite" size. You won't need to tell the Array List how many elements it will contain up front.

That said, your `ArrayList` _will_ use your `FixedArray` class under the hood. You'll need to figure out how to make your `ArrayList` grow given this restriction.

## Why is this important?

Sometimes we can't know how big a collection of things will be up front, but a standard array forces us to choose a set size when we're writing our code, which presents us with a conundrum. We could try and allocate an array that's just _really big_, but we'd be using memory inefficiently, and we still might out grow it.

If the size of our collection can't be determined at compile time, it's impossible for us to just use a standard fixed-size array.

Again, your `ArrayList` will use `FixedArray` underneath, but it will be able to grow to any number of elements.

## Release 1: `ArrayList`

Implement and write RSpec tests for the `ArrayList` class, supporting the following interface:

### Interface
 - `ArrayList#new(size)`: Instantiate a new dynamic array with initial size `size`.
 - `ArrayList#add(element)`: Add `element` to the end of the list. Return the element added.
 - `ArrayList#get(index)`: Retrieve an element at `index`. If no element exists at that index, throw an OutOfBoundsException
 - `ArrayList#set(index, element)`: Replace an _existing_ element at `index`. Return the element. If no element exists at that index, throw an OutOfBoundsException
 - `ArrayList#length`: Return the number of items in the list


## Release 2: Insert

Sometimes we want to be able to inject an element into the middle of a list. Implement and test `ArrayList#insert(index, element)`. `#insert` should insert the value `element` in the List at position `index`.  If there isn't an element at that position in the list, throw an OutofBoundsException

## Release 3: Complexity

A crucial part of knowing a data structure is the big-O of its operations. Knowing how to make one isn't enough.

By now you have the following methods on your ArrayList class:

- `ArrayList#new(size)`
- `ArrayList#add(element)`
- `ArrayList#get(index)`
- `ArrayList#set(index, element)`
- `ArrayList#size(element)`
- `ArrayList#insert(index, element)`

For each of these methods, determine the big-O complexity of the method. Create a file `complexity.md` and write the big-O for each method, explaining why.

For example, `ArrayList#new` is `O(1)` — whether our list ends up containing 0 elements or 1000, `#new(size)` will always take the same amount of time.

Be sure to note the _best case_ and _worst case_ complexity for each method. Depending on your growth strategy, certain methods may take much longer depending on certain circumstances.

## Stretch: Growth strategies

There are many strategies to grow your ArrayList, but they're not all created equal. Think about your own strategy, and whether it's optimal. You may interested to know that there is a growth strategy that will allow for [_amortized_ constant time](http://en.wikipedia.org/wiki/Amortized_analysis).

### Amortized?

In plain English, _amortized_ analysis of an algorithm's complexity considers the time taken in the context of many operations, not just one. If an operation is very costly sometimes, and not costly other times, we average out the cost in an amortized analysis.

If, say, the average cost of our list growth stays constant despite the size of the list we can say it's got a constant-time amortized complexity (`O(1)`) even if the worse-case scenario might be worse than `O(1)`.

If you improve your growth strategy, your existing tests should prove your `ArrayList` is still working the same as it did before the refactor. If there are un-caught bugs, or if you see holes in your tests, add those tests. Ensure the tests _fail_ before you fix your code and make them pass.
