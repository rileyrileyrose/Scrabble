

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
    #
    def self.check_7_letters(word)
        if word.length == 7
          return true
        end
    end


    def self.highest_score_from(array_of_words)
      count = 0
      max_score = 0
      winning_word = ""
      array_of_words.each do |word|
        score = 0
        score = 50 if check_7_letters(word)
        score += self.score(word)
        if score >= max_score
          max_score = score
            if word.length < winning_word.length
              winning_word = word
            end
          winning_word = word
        end
      end
      return winning_word
    end



    #returns the total score value for the given word.
    def self.score(word)
      #checks the word is actually a string.
      if (word == nil) || !(word.is_a? String)
        raise ArgumentError, "You need to write a word"
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
