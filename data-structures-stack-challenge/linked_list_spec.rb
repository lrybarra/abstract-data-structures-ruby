require_relative 'linked_list'

describe LinkedList do
  let(:myLinkedList) { LinkedList.new }
  it "inserts first node" do
    myLinkedList.insert_first("Chicago")
  end
end
