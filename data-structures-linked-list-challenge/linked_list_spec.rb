require_relative 'linked_list'

describe LinkedList do
  let(:myLinkedList) { LinkedList.new }

  it "first node is nil upon creation of LinkedList" do
    expect(myLinkedList.remove_first).to eq(nil)
  end

  it "first node is nil upon creation of LinkedList" do
    expect(myLinkedList.remove_last).to eq(nil)
  end

  it "size is 0 upon creation of LinkedList" do
    expect(myLinkedList.size).to eq(0)
  end

  it "get element at index 0" do
    expect{myLinkedList.get(0)}.to raise_error("OutOfBoundsException")
  end

  it "get element at index 7 of empty Linked List" do
    expect{myLinkedList.get(7)}.to raise_error("OutOfBoundsException")
  end

  it "inserts first node and gets it" do
    myLinkedList.insert_first("Chicago")
    expect(myLinkedList.get(0).element).to eq("Chicago")
  end

  it "inserts first node and next node is nil" do
    myLinkedList.insert_first("Chicago")
    expect(myLinkedList.get(0).nextNode).to eq(nil)
  end

  it "inserts three nodes and gets node at index 1" do
    myLinkedList.insert_first("Chicago")
    myLinkedList.insert_first("Miami")
    myLinkedList.insert_first("Gainesville")
    expect(myLinkedList.get(1).element).to eq("Miami")
  end

  it "inserts three nodes and removes first node" do
    myLinkedList.insert_first("Chicago")
    myLinkedList.insert_first("Miami")
    myLinkedList.insert_first("Gainesville")
    expect(myLinkedList.remove_first.element).to eq("Gainesville")
  end

  it "inserts three nodes and size is 3" do
    myLinkedList.insert_first("Chicago")
    myLinkedList.insert_first("Miami")
    myLinkedList.insert_first("Gainesville")
    expect(myLinkedList.size).to eq(3)
  end

  it "inserts three nodes and removes last node" do
    myLinkedList.insert_first("Chicago")
    myLinkedList.insert_first("Miami")
    myLinkedList.insert_first("Gainesville")
    expect(myLinkedList.remove_last.element).to eq("Chicago")
  end

  it "inserts three nodes using insert last" do
    myLinkedList.insert_last("Chicago")
    myLinkedList.insert_last("Miami")
    myLinkedList.insert_last("Gainesville")
    expect(myLinkedList.remove_last.element).to eq("Gainesville")
    expect(myLinkedList.remove_last.element).to eq("Miami")
    expect(myLinkedList.remove_last.element).to eq("Chicago")
    expect(myLinkedList.size).to eq(0)
  end

  it "inserts three nodes and removes first node three times" do
    myLinkedList.insert_first("Chicago")
    myLinkedList.insert_first("Miami")
    myLinkedList.insert_first("Gainesville")
    expect(myLinkedList.remove_first.element).to eq("Gainesville")
    expect(myLinkedList.remove_first.element).to eq("Miami")
    expect(myLinkedList.remove_first.element).to eq("Chicago")
  end
end
