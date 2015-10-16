module Scrabble
  class Dictionary
    attr_accessor :dictionary

    def initialize
      @dictionary = ["apple", "banana", "cheery", "visceral", "excite", "smile", "face", "tooth", "glitter"]
    end

    def is_valid?(word)
      raise ArgumentError if word.class != String
      if @dictionary.include?(word)
        return true
      else
        return false
      end
    end

    def add_word(word)
      
    end

  end
end
