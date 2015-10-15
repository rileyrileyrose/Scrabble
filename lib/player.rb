module Scrabble

  class Player
    attr_accessor :name, :score, :plays


    def initialize(name)
      @name = name
      @score = 0
      @plays = []
    end

    def play(word)
      if won?
        return false
      else
        @plays.push(word)
      end
    end

    def plays
      return @plays
    end
    
  end
end
