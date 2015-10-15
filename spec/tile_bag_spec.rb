require "./lib/tile_bag.rb"

describe Scrabble::TileBag do
  before :each do
    @tile_bag =Scrabble::TileBag.new
  end

  describe 'initialize' do
    it "make a new tile bag" do
      expect(@tile_bag.tile_bag).to be_an(Array)
    end
    it "last letter in the array is Z" do
      expect(@tile_bag.tile_bag.last).to eq("z")
    end
  end
end
