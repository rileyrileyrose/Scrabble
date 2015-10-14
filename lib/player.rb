module Scrabble

  class Player
    attr_reader :name

    def initialize(name)
      @name = name
      @score = 0
      @plays = []
    end

  end

end
