

module Scrabble

  class Scrabble

    def self.highest_score_from(array_of_words)
      # returns the word in an array with the highest score

      array_of_scores = array_of_words.map |word| do
        word.score
      end
      # better to use fewer tiles
      # 50 pt bonus for using all 7 tiles
      # if multiple words are same, choose first in list
    end


  end

end
