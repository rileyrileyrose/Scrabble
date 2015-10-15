require "scrabble_class.rb"

module Scrabble

  class Player
    attr_accessor :name, :score, :plays

    def initialize(name)
      @name = name
      @score = 0
      @plays = []
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

  end

end
