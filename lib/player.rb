module Scrabble

  class Player
    attr_accessor :name, :score, :plays

    def initialize(name)
      @name = name
      @score = 0
      @plays = []
    end

  end

end
