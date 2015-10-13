require "./lib/scrabble_class.rb"

describe Scrabble do

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
end
