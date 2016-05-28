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

  it "union of two sets keeps unique elements only" do
    my_set.add("Chicago")
    my_set.add("Miami")
    my_set.add("Gainesville")
    anotha_one = MySet.new
    anotha_one.add("Chicago")
    anotha_one.add("Miami")
    anotha_one.add("NYC")
    anotha_one.add("Las Vegas")
    new_set = my_set.union(anotha_one)
    expect(new_set.size).to eq(5)
  end

  it "union of two sets keeps unique elements only" do
    my_set.add("Chicago")
    my_set.add("Miami")
    my_set.add("Gainesville")
    anotha_one = MySet.new
    anotha_one.add("Chicago")
    anotha_one.add("Miami")
    anotha_one.add("NYC")
    anotha_one.add("Las Vegas")
    new_set = my_set.union(anotha_one)
    expect(new_set.contains?("NYC")).to eq(true)
    expect(new_set.contains?("Gainesville")).to eq(true)
  end

  it "intersection of two sets keeps duplicate elements only" do
    my_set.add("Chicago")
    my_set.add("Miami")
    my_set.add("Gainesville")
    anotha_one = MySet.new
    anotha_one.add("Chicago")
    anotha_one.add("Miami")
    anotha_one.add("NYC")
    anotha_one.add("Las Vegas")
    new_set = my_set.intersection(anotha_one)
    expect(new_set.size).to eq(2)
  end

  it "intersection of two sets keeps duplicate elements only" do
    my_set.add("Chicago")
    my_set.add("Miami")
    my_set.add("Gainesville")
    anotha_one = MySet.new
    anotha_one.add("Chicago")
    anotha_one.add("Miami")
    anotha_one.add("NYC")
    anotha_one.add("Las Vegas")
    new_set = my_set.intersection(anotha_one)
    expect(new_set.contains?("NYC")).to eq(false)
    expect(new_set.contains?("Miami")).to eq(true)
  end

  it "difference of two sets keeps elements not in other set" do
    my_set.add("Chicago")
    my_set.add("Miami")
    my_set.add("Gainesville")
    anotha_one = MySet.new
    anotha_one.add("Chicago")
    anotha_one.add("Miami")
    anotha_one.add("NYC")
    anotha_one.add("Las Vegas")
    new_set = my_set.difference(anotha_one)
    expect(new_set.size).to eq(1)
  end

  it "difference of two sets keeps elements not in other set" do
    my_set.add("Chicago")
    my_set.add("Miami")
    my_set.add("Gainesville")
    anotha_one = MySet.new
    anotha_one.add("Chicago")
    anotha_one.add("Miami")
    anotha_one.add("NYC")
    anotha_one.add("Las Vegas")
    new_set = my_set.difference(anotha_one)
    expect(new_set.contains?("Chicago")).to eq(false)
    expect(new_set.contains?("Gainesville")).to eq(true)
  end

  it "subset returns true if other set is subset of original set" do
    my_set.add("Chicago")
    my_set.add("Miami")
    my_set.add("Gainesville")
    anotha_one = MySet.new
    anotha_one.add("Chicago")
    anotha_one.add("Miami")
    expect(my_set.subset?(anotha_one)).to eq(true)
  end

  it "subset returns false if other set is not subset of original set" do
    my_set.add("Chicago")
    my_set.add("Miami")
    my_set.add("Gainesville")
    anotha_one = MySet.new
    anotha_one.add("Chicago")
    anotha_one.add("Miami")
    anotha_one.add("Las Vegas")
    expect(my_set.subset?(anotha_one)).to eq(false)
  end

  # empty set tizzests

  it "union of two sets keeps unique elements only" do
    my_set.add("Chicago")
    my_set.add("Miami")
    my_set.add("Gainesville")
    anotha_one = MySet.new
    new_set = my_set.union(anotha_one)
    expect(new_set.size).to eq(3)
  end

  it "union of two sets keeps unique elements only" do
    my_set.add("Chicago")
    my_set.add("Miami")
    my_set.add("Gainesville")
    anotha_one = MySet.new
    new_set = my_set.union(anotha_one)
    expect(new_set.contains?("Gainesville")).to eq(true)
  end

  it "intersection of two sets keeps duplicate elements only" do
    my_set.add("Chicago")
    my_set.add("Miami")
    my_set.add("Gainesville")
    anotha_one = MySet.new
    new_set = my_set.intersection(anotha_one)
    expect(new_set.size).to eq(0)
  end

  it "intersection of two sets keeps duplicate elements only" do
    my_set.add("Chicago")
    my_set.add("Miami")
    my_set.add("Gainesville")
    anotha_one = MySet.new
    new_set = my_set.intersection(anotha_one)
    expect(new_set.contains?("Miami")).to eq(false)
  end

  it "difference of two sets keeps elements not in other set" do
    my_set.add("Chicago")
    my_set.add("Miami")
    my_set.add("Gainesville")
    anotha_one = MySet.new
    new_set = my_set.difference(anotha_one)
    expect(new_set.size).to eq(3)
  end

  it "difference of two sets keeps elements not in other set" do
    my_set.add("Chicago")
    my_set.add("Miami")
    my_set.add("Gainesville")
    anotha_one = MySet.new
    new_set = my_set.difference(anotha_one)
    expect(new_set.contains?("Chicago")).to eq(true)
  end

  it "subset returns true if other set is subset of original set" do
    my_set.add("Chicago")
    my_set.add("Miami")
    my_set.add("Gainesville")
    anotha_one = MySet.new
    expect(my_set.subset?(anotha_one)).to eq(false)
  end

  it "subset returns false if other set is not subset of original set" do
    my_set.add("Chicago")
    my_set.add("Miami")
    my_set.add("Gainesville")
    anotha_one = MySet.new
    expect(my_set.subset?(anotha_one)).to eq(false)
  end

end
