require "./lib/scrabble_class.rb"

describe Scrabble do

  describe  "word_value" do
   it "empty word do nothing" do
   expect (@word).to be_a(String)
    end
  end

  describe "score" do
    it "return a score 9 for the word 'apple'" do
      expect Scrabble.score("apple").to equal 9
    end
    it "return an error if gets nothing" do #change to error ?
      expect Scrabble.score(nil).to raise_error(ArgumentError)
    end
    it "return error when it's not a letter" do
      expect Scrabble.score(9).to raise_error(ArgumentError) # check
    end
  end

  describe "letter_value" do
    it "return the value of the letter 'A'" do
      expect Scrabble.letter_value("a").to equal 1
    end
    it "return the value of the letter 'D'" do
      expect Scrabble.letter_value("d").to equal 2
    end
    it "return the value of the letter 'B'" do
      expect Scrabble.letter_value("b").to equal 3
    end
    it "return the value of the letter 'F'" do
      expect Scrabble.letter_value("f").to equal 4
    end
    it "return the value of the letter 'K'" do
      expect Scrabble.letter_value("k").to equal 5
    end
    it "return the value of the letter 'J'" do
      expect Scrabble.letter_value("j").to equal 8
    end
    it "return the value of the letter 'Q'" do
      expect Scrabble.letter_value("q").to equal 10
    end
  end
  #
  # describe ".highest_score_from"
  #   it 'only includes strings' do
  #
  #   end
  #   it 'finds highest score value(s)' do
  #     @word_array = ["aaa", "bbb", "zzz"]
  #     expect(Scrabble.highest_score_from(@word_array)).to eq("zzz")
  #   end
  #   it 'chooses shortest word in tie' do
  #
  #   end
  #   it 'applies bonus to seven letter word' do
  #
  #   end
  #   it 'chooses first word in a same-length tie' do
  #
  #   end
  # end

end
