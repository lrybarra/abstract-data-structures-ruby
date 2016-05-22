require_relative 'stack'

describe Stack do
  let(:da_stack) { Stack.new }
  it "initializes a new stack" do
    expect(da_stack.class).to eq(Stack)
  end

  it "empty? returns true on brand new Stack" do
    expect(da_stack.empty?).to eq(true)
  end

  it "top returns nil on brand new empty Stack" do
    expect(da_stack.top).to eq(nil)
  end

  it "pop returns nil on brand new empty Stack" do
    expect(da_stack.pop).to eq(nil)
  end

  it "push element and peek at it" do
    da_stack.push(23)
    expect(da_stack.top).to eq(23)
  end

  it "push element and pop it" do
    da_stack.push(23)
    expect(da_stack.pop).to eq(23)
  end

  it "empty? returns false after pushing element" do
    da_stack.push(23)
    expect(da_stack.empty?).to eq(false)
  end

  it "push multiple elements and top returns last pushed element" do
    da_stack.push(45)
    da_stack.push(55)
    da_stack.push(23)
    expect(da_stack.top).to eq(23)
  end

  it "push multiple elements and pop returns last pushed element" do
    da_stack.push(45)
    da_stack.push(55)
    da_stack.push(23)
    expect(da_stack.pop).to eq(23)
  end
end
