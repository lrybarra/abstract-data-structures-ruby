# Linked Lists

[Linked Lists](http://en.wikipedia.org/wiki/Linked_list) are one approach to producing a _dynamically_ sized collection of elements. Array Lists accomplish this as well, but they do it differently.

In a Linked List, a collection of elements is represented as a chain of **Nodes**.

The most basic Node has two things:

 * A value (also known as an _element_)
 * A pointer to another Node

![Linked List](assets/linked-list.png)

In other words, Linked Lists are lists that are composed of many Nodes each referencing the next.

## Why is this important?

Linked Lists are useful when you need a dynamically sized collection. Unlike a fixed-array, you can expand a Linked List by simple pointing its _last_ Node to a new Node.

Linked Lists are also efficient when inserting nodes in the middle of a collection. We'll see why that is as we build out our `LinkedList` implementation.

## Restrictions

In the following releases do not use Ruby's built in data structures, including Arrays, Hashes or Sets in your implementation. The only structures you should use are objects from classes _you_ define. You may also use the FixedArray class if you think you need to.

The _elements_ (aka values) you store in your list may be any kind of object, the type of values you store in your list shouldn't affect the implementation.

## Release 0: Implement `Node`

Since Linked Lists are made up of Nodes, let's start by creating a `Node` class.

Implement and write RSpec tests for the `Node` class, supporting the following interface:

### Interface
- `Node#new(element)`: Instantiate a new node containing `element`
- `Node#insert_after(other_node)`: Insert `other_node` after this node. In other words, `other_node` becomes the node that this instance _points to_.
- `Node#remove_after()`: Remove the node that this node points to (aka the node "after" this node)

## Release 1: Implement `LinkedList`

Now that you've implemented and tested `Node` let's build up our `LinkedList` class.

Implement and write RSpec tests for the `LinkedList` class, supporting the following interface.

### Interface
- `LinkedList#new`: Instantiate a new linked list
- `LinkedList#insert_first(element)`: Insert an element at the front of the list
- `LinkedList#remove_first`: Remove the element at the front of the list or `nil` if absent
- `LinkedList#insert_last(element)`: Insert an element at the back of the list
- `LinkedList#remove_last`: Remove the element at the back of the list or `nil` if absent

## Release 2: More methods

Now you have a basic `LinkedList` class implemented. Let's expand it to make it more useful as a collection.

Implement and write RSpec tests for the `LinkedList` class, expanding to support the following interface.

### Interface

- `LinkedList#get(index)`: Get the element in the list at `index`
- `LinkedList#set(index, element)`: Set the element in the list at `index`
- `LinkedList#insert(index, element)`: Insert the value `element` in the List at position `index`
- `LinkedList#size`: Return the size of the list

## Release 3: Complexity

By now you have the following methods on your LinkedList class:

 - `LinkedList#new`
 - `LinkedList#insert_first(element)`
 - `LinkedList#remove_first(element)`
 - `LinkedList#insert_last(element)`
 - `LinkedList#remove_last(element)`
 - `LinkedList#get(index)`
 - `LinkedList#set(index, element)`
 - `LinkedList#insert(index, element)`
 - `LinkedList#size`

For each of these methods, determine the big-O complexity of the method. Create a file `complexity.md` and write the big-O for each method, explaining why.

For example, `LinkedList#new` is `O(1)` — whether our list ends up containing 0 elements or 1000, `#new` will always take the same amount of time.

After you have figured out the big-O for each method, answer the following question in `complexity.md`:

 * Why is inserting a value into a LinkedList potentially faster than inserting a value into an ArrayList?

## Note on Stretches

The questions posed in the stretches below might end up being interview questions. Focus on getting your cores done first, but consider returning to these stretches when you have time.

## Stretch 1: Remove... faster

After the last release, you should have a sense of which methods in your Linked List implementation are fast and which are slow.

Let's revisit our implementation and speed it up.

In this release, ensure that `remove_first` and `remove_last` run in constant (`O(1)`) time. Remember, that means the `remove_*` methods should run just as fast whether it's a list of 2 nodes or 1000 nodes.

Think about what state the list needs to keep track of to accomplish this. What design trade offs must you make to achieve this result?

Since you've already written tests for these methods, ensure that they still run. You're using your tests as a _safety net_ in this refactor.

## Stretch 2: Revisit `size`

Change the implementation of you class to ensure that the `size` method runs in constant time as well. What did you have to do to make

## Stretch 3: Reflect on Refactoring

What changes did you need to make to complete releases 4 and 5? What are the _downsides_ to the change you made? Add your thoughts to `complexity.md`.
