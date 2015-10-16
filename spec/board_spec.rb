require "./lib/board.rb"

describe Scrabble::Board do
  before :each do
    @board = Scrabble::Board.new
  end
  describe 'initialize' do
    it "nade a matrix array of 15" do
      expect(@board.board).to eq([])
    end

    describe "placed_word" do
      it "return an Error if you can't place the word in the board" do
        word = "I_am_more_then_15_letters_string"
        expect{(@board.placed_word(word)).to be_nil}
      end
    end


  end
end
