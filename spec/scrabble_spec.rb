require "./lib/scrabble_class.rb"

describe Scrabble do

<<<<<<< HEAD
=======
  describe  "word_value"
   it "empty word do nothing"
   expect (@word).to
>>>>>>> 13af4df7d4ab9e1c6670d2e3ccf5c52ddb9ae652
  describe "letter_value" do
    it "return the value of the letter 'A'" do
      expect letter_value("a").to equal 1
    end
    it "return the value of the letter 'D'" do
      expect letter_value("d").to equal 2
    end
    it "return the value of the letter 'B'" do
      expect letter_value("b").to equal 3
    end
    it "return the value of the letter 'F'" do
      expect letter_value("f").to equal 4
    end
    it "return the value of the letter 'K'" do
      expect letter_value("k").to equal 5
    end
    it "return the value of the letter 'J'" do
      expect letter_value("j").to equal 8
    end
    it "return the value of the letter 'Q'" do
      expect letter_value("q").to equal 10
    end

  end

  describe ".highest_score_from"
    it 'finds highest score value(s)' do
      @word_array = [one, two, three, four, five, six, seven]
      expect(Scrabble.highest_score_from(@word_array).to )
    end
    it 'chooses shortest word in tie' do

    end
    it 'applies bonus to seven letter word' do

    end
    it 'chooses first word in a same-length tie' do

    end
  end

end
