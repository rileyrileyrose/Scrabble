require "./lib/player.rb"

describe Scrabble::Player do
  before :each do
    @player = Scrabble::Player.new("Ada")
  end

  describe "#initialize" do
  it "has a name" do
    expect(@player.name).to eq("Ada")
    end
  end

  describe "#total_score" do
    it  "sums up and returns scores" do
      @player.plays = ["aaa", "b", "c"]
      @player.total_score
      expect(@player.score).to eq(9)
    end
  end
  describe "#won?" do
    it "player has > 100 points" do
      @player.score = 300
      expect(@player.won?).to eq(true)
    end
    it "player has < 100 points" do
      @player.score = 50
      expect(@player.won?).to eq(false)
    end
  end

  describe "#highest_scoring_word" do
    it "returns highest scoring word" do
      @player.plays = ["aaa", "bbb", "zzz"]
      expect(@player.highest_scoring_word).to eq("zzz")
    end
  end

end
