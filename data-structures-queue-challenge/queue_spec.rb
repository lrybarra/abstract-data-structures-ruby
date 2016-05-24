require_relative 'queue'

describe Queue do
  let(:da_queue) { Queue.new }

  it "initializes a new queue" do
    expect(da_queue.class).to eq(Queue)
  end

  it "new queue is empty" do
    expect(da_queue.empty?).to eq(true)
  end

  it "new queue returns nil when you dequeue" do
    expect(da_queue.dequeue).to eq(nil)
  end

  it "new queue returns nil when you peel" do
    expect(da_queue.peel).to eq(nil)
  end

  it "queue is not empty after you enqueue an element" do
    da_queue.enqueue(23)
    expect(da_queue.empty?).to eq(false)
  end

  it "queue is empty after you enqueue an element then dequeue" do
    da_queue.enqueue(23)
    da_queue.dequeue
    expect(da_queue.empty?).to eq(true)
  end

  it "queue is FIFO" do
    da_queue.enqueue("Jose")
    da_queue.enqueue("Marcos")
    da_queue.enqueue("Joaquin")
    expect(da_queue.dequeue).to eq("Jose")
  end

  it "queue is FIFO" do
    da_queue.enqueue("Jose")
    da_queue.enqueue("Marcos")
    da_queue.enqueue("Joaquin")
    da_queue.dequeue
    expect(da_queue.dequeue).to eq("Marcos")
  end

end
