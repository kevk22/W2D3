gem 'rspec'
require 'towers'

describe Board do
  subject(:board) { Board.new(4) }

  describe "#initialize" do
    it "should initialize three poles" do
      expect(board.poles.length).to eq(3)
    end

    it "shold initialize first pole to have num amount of rings" do
      expect(board.poles[0].length).to eq(4)
    end

    it "should initialize poles other than the first pole to be empty" do
      expect(board.poles[1]).to be_empty
    end
  end

end