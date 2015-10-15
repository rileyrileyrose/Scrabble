require "./lib/player.rb"

describe Scrabble::Player do
  before :each do
    @player = Scrabble::Player.new("Ada")
  end

  describe "initialize" do
  it "has a name" do
    expect(@player.name).to eq("Ada")
    end
  end

  describe "plays" do
    it "return the words array" do
    expect(@player.plays).to eq([])
    end
  end

  describe "play" do
    it "Adds the input word to the plays Array" do
      @player.play("apple")
      expect(@player.plays).to eq(["apple"])
    end
    it "Returns false if player has already won" do
      @player.won? = true
      expect(@player.play("apple")).to eq(false)
    end
  end

end
