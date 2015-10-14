require "./lib/scrabble_class.rb"

describe Scrabble do


  describe  "score" do
    it "return a score 9 for the word 'apple'"
      expect score("apple").to equal 9
    end
    it "return a nil if gets nothing" #change to error ?
      expect score().to be_nil
    end
    it "return nil when it's not a letter"
      expect score(9).to be_nil
    end
  end

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
      expect(Scrabble.)
    end
    it 'chooses shortest word in tie' do

    end
    it 'applies bonus to seven letter word' do

    end
    it 'chooses first word in a same-length tie' do

    end
  end

end
