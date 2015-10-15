require "scrabble_class.rb"

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

    def total_score
      @score = 0
      @plays.each do |word|
        @score += Scrabble.score(word)
      end
      return @score
    end

    def won?
      if @score > 100
        return true
      else
        return false
      end
    end

    def plays
      return @plays
    end

  end
end
