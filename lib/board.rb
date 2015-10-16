module Scrabble

  class Board
    attr_accessor :board

    def initialize
      @board = [][]
      # :horizontal
      # :vertical
    end

    def placed_word(word, col, row, direction)
      word.length times do |n|
        if direction == :horizontal
          if horizonal_available?(word, col, row) #return true even if one of the letters located
            placed_word_horizontal(word, col, row) #check if there's a letter- and use the right amount of letters the user needs
          else
            puts "There is no place on the board"
            break
          end
        elsif direction == :vertical
          if vertical_available?(word, col, row)
            placed_word_vertical(word, col, row)
          else
            puts "There is no place on the board"
            break
          end
        else
          raise ArgumentError, "No direction"
        end
      end
    end

    def horizonal_available? (word, col, row) #boolen method
    end

    def placed_word_horizontal(word, col, row)
    end

    def vertical_available?(word, col, row) #boolen method
    end

    def placed_word_vertical(word, col, row)
    end








  end
end
