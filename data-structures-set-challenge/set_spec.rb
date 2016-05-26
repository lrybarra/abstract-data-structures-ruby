require_relative 'set'

describe MySet do
  let(:my_set) { MySet.new }
  it "makes a new Set" do
    expect(my_set.class).to eq(MySet)
  end

  it "brand new MySet has size of 0" do
    expect(my_set.size).to eq(0)
  end

  it "contains? returns false for element that doesn't exist" do
    expect(my_set.contains?("Chicago")).to eq(false)
  end

  it "add element and contains? returns true" do
    my_set.add("Chicago")
    expect(my_set.contains?("Chicago")).to eq(true)
    expect(my_set.size).to eq(1)
  end

  it "add element and size is 1" do
    my_set.add("Chicago")
    expect(my_set.size).to eq(1)
  end

  it "add same element twice and size is 1" do
    my_set.add("Chicago")
    my_set.add("Chicago")
    expect(my_set.size).to eq(1)
  end

  it "add two elements and size is 2" do
    my_set.add("Chicago")
    my_set.add("Miami")
    expect(my_set.size).to eq(2)
  end

  it "add element then remove it and contains? returns false" do
    my_set.add("Chicago")
    expect(my_set.contains?("Chicago")).to eq(true)
    my_set.remove("Chicago")
    expect(my_set.contains?("Chicago")).to eq(false)
  end

end
