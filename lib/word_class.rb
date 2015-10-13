module Scrabble

  class Word
    attr_reader :name

    def initialize
      word_array = ["word", "quiet", "tired", "spiral", "virtual", "swarthy", "boats", "pumped", "foxy", "entire", "elaborate"]
      @name = word_array[rand(word_array.length)]
    end

  end

end
