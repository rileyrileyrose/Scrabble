

module Scrabble

  class Scrabble

    def self.highest_score_from(array_of_words)
      # returns the word in an array with the highest score

      array_of_scores = array_of_words.map |word| do
        word.score
      end
      # better to use fewer tiles
      # 50 pt bonus for using all 7 tiles
      # if multiple words are same, choose first in list
    end

    def letter_value(letter)
      case letter
        when "e", "a", "i", "o", "u", "l", "n", "r", "s", "t"
          return 1
        when "d", "g"
          return 2
        when "b", "c", "m", "p"
          return 3
        when "f", "h", "v", "w", "y"
          return 4
        when "k"
          return 5
        when "j", "x"
          return 8
        when "q", "z"
          return 10
      end

    end
  end
end
