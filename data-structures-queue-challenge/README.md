# Queues

A [Queue](http://en.wikipedia.org/wiki/Queue_%28abstract_data_type%29) is a lot like the Stack data structure, but the order in which you pull elements out is different. In a Queue you `enqueue` to put something into the Queue and you `dequeue` to pull something out. In other words, this is a **first-in, first-out** data structure, aka FIFO.

To recap:
 * Stacks are LIFO. The **last** **item** added to the list is the **first** to be pulled **out**, so a stack if a LIFO data structure.
 * Queues are FIFO. The **first** **item** added to the list is the **first** to be pulled **out**, so a Queue is a FIFO data structure.

## Why is this important?

Queues are the natural complement to Stacks. Some algorithms work with Queues, others work with Stacks. For example, the difference between a [depth-first-search](https://en.wikipedia.org/wiki/Depth-first_search) and a [breadth-first-search](https://en.wikipedia.org/wiki/Breadth-first_search) is whether they use a stack or a queue.

## Release 1: Implement the Queue

Write and test a `Queue` class that conforms to the following interface:

### Interface
- `Queue#new()`: Instantiate a new `Queue`
- `Queue#enqueue(element)`: Add a new element to the queue
- `Queue#dequeue`: Remove and return the first element in the queue
- `Queue#peel`: Return (but do not remove) the first element in the queue
- `Queue#empty?`: Answer whether or not the queue is empty

Do not use any Ruby data structures in your implementation. Instead, pick one of your own to use in your implementation:

 * FixedArray
 * ArrayList
 * LinkedList

## Resources

* [Wikipedia: Queue](http://en.wikipedia.org/wiki/Queue_%28abstract_data_type%29)
