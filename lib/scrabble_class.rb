

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
        return lookAhead =~ /[[:alpha:]]/
    end


    def self.highest_score_from(array_of_words)
      # returns the word in an array with the highest score
      array_of_scores = []
      array_of _words = array_of_words.each {|word| word.to_s}
      if array_of_words.includes?(nil)
        raise ArgumentError, "This array contains a nil value."
      array_of_words.each |word| do
        array_of_scores.push(word.score)
      end
      @high_score = array_of_scores.max
      # better to use fewer tiles
      # 50 pt bonus for using all 7 tiles
      # if multiple words are same, choose first in list
    end
    
    # returns the total score value for the given word.
    def self.score(word)
      if word == nil
        puts "You need to write a word" #double check
      else
        word_array = word_value.split("")
        score = 0
        word_array.each |n| do
          if letter?(n) == 0 do
            score += letter_value(n)
          else
            raise ArguemetError.new("You need to write only letters")
            break
          end
        return score
      end

    end
  end
end
