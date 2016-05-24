require_relative 'node'

describe Node do
  describe "let" do
    let(:myNode) { Node.new("Chicago") }
    it "creates a new Node with element 'Chicago'" do
      expect(myNode.element).to eq "Chicago"
    end

    it "next Node is nil" do
      expect(myNode.nextNode).to eq nil
    end

    it "point to node passed into insert_after method" do
      newNode = Node.new("Miami")
      myNode.insert_after(newNode)
      expect(myNode.nextNode).to eq newNode
    end

    it "remove_after removes pointer to next node" do
      newNode = Node.new("Miami")
      myNode.insert_after(newNode)
      myNode.remove_after
      expect(myNode.nextNode).to eq nil
    end

    it "nextNode is type Node" do
      newNode = Node.new("Miami")
      myNode.insert_after(newNode)
      expect(myNode.nextNode.class).to eq Node
    end

  end
end
