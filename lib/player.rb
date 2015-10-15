require "scrabble_class.rb"

module Scrabble

  class Player
    attr_accessor :name, :score, :plays, :score_array


    def initialize(name)
      @name = name
      @score = 0
      @plays = []
      @score_array = []
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

    def highest_scoring_word
      @plays.
    end

  end

    def plays
      return @plays
    end

  end
end
