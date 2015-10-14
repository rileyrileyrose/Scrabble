

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
    def self.letter?(a)
        return a =~ /[[:alpha:]]/
    end


    def self.highest_score_from(array_of_words)
      # returns the word in an array with the highest score
      scores_hash = {}
      #Make sure every word is a string
      array_of_words = array_of_words.each {|word| word = word.to_s}
      # Makes sure no elements of the array are nil
      if array_of_words.include?(nil)
        raise ArgumentError, "This array contains a nil value."
      end
      # Find score of each word, put into hash
      array_of_words.each do |word|
        scores_hash[Scrabble.score(word)] = word
      end
      # Sort through scores_hash and if value is a string with 7 letters, add 50 to the score (the key of the key/value pair)
      # Find high scores
      @high_scores = scores_hash.select{|s, w| s == scores_hash.keys.max}

      # What to do with ties
      if @high_scores.length != 1

        return @high_scores
      end
      # better to use fewer tiles
      # 50 pt bonus for using all 7 tiles
      # if multiple words are same, choose first in list
      return @high_scores[scores_hash.keys.max]
    end

    #returns the total score value for the given word.
    def self.score(word)
      if (word == nil) || !(word.is_a? String)
        raise ArgumentError, "You need to write a word" #double check
      else
        word_array = word.split("")
        score = 0
        word_array.each do |n|
          if letter?(n) == 0
            score += letter_value(n)
          else
            raise ArgumentError, "You need to write only letters"
            break
          end
        end
        return score
      end
    end

  end
end
