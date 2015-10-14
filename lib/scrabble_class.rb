

module Scrabble

  class Scrabble


    def self.letter_value(letter)
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

    #check that it's actually a letter - 0 for letter, nil if not
    def letter?(lookAhead)
        reutrn lookAhead =~ /[[:alpha:]]/
    end


    def self.highest_score_from(array_of_words)
            # returns the word in an array with the highest score

      array_of_scores = array_of_words.map |word| do
          word.score
      end
            # better to use fewer tiles
            # 50 pt bonus for using all 7 tiles
            # if multiple words are same, choose first in list
    end

    def self.score(word)
      if word == nil
        return nil
      else
        word_array = word_value.split("")
        score = 0
        word_array.each |n| do
          if letter?(n) == 0 do
            score += letter_value(n)
          else
            return nil # or an error ?
          end
        return score
      end

    end
  end
end
