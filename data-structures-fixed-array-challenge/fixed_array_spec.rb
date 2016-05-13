require_relative 'fixed_array'

describe FixedArray do
  describe "let" do
    let(:fixedArray) { FixedArray.new(10) }
    it "creates a new FixedArray with size" do
      expect(fixedArray.size).to eq 10
    end

    it "sets new element" do
      fixedArray.set(3, "yooo")
      expect(fixedArray.get(3)).to eq "yooo"
    end

    it "raises error if out of bonds" do
      expect { fixedArray.get(333) }.to raise_error("OutOFBoundsException")
    end

    it "raises error if out of bonds" do
      expect { fixedArray.set(333, 'yoooo') }.to raise_error("OutOFBoundsException")
    end

    it "returns nil for unset element" do
      expect(fixedArray.get(2)).to eq nil
    end

  end
end
