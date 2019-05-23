require "methods"

describe "#my_uniq" do 
  let(:arr) { [1, 2, 3, 3] }

  it "takes an array as argument" do
    expect{ my_uniq(arr) }.to_not raise_error
  end

  it "should return a new array" do
    expect(my_uniq(arr)).to_not be(arr)
  end

  it "should return an array with only unique elements" do
    expect(my_uniq(arr)).to eq([1, 2, 3])
  end
end

describe "#two_sum" do  
  it "subarray elements should sum to zero" do
    expect( [5, 1, -7, -5].two_sum ).to eq([[0, 3]])
  end

  it "finds multile pairs" do
    expect( [-1, 0, 2, -2, 1].two_sum ).to eq([[0, 4], [2, 3]])
  end

  it "returns [] if no pair is found" do
    expect( [1, 2, 3, 4, 5].two_sum ).to eq([])
  end

  it "won't find spurious zero pairs" do
    expect( [0, 1, 2, 3, 4].two_sum ).to eq([])
  end
end

describe "#my_transpose" do
  it "converts between row-oirented and column-oriented representations of a matrix" do 
    expect( my_transpose([
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ])).to eq([
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8]
  ])
  end
end

describe "#stock_picker" do 
    it "outsputs the most profitable pair of indexes" do
      expect(stock_picker([1,2,3,4,5,6])).to eq([0,5])
    end


  end
