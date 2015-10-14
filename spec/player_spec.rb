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

  describe "total_score" do
    it  "sums up and returns scores" do
      @player.plays = []
    end

  end

end
