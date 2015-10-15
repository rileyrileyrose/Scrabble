module Scrabble

  class TileBag

    def initialize
      @tile_bag =

    end

    def draw_tiles(num)
      raise ArgumentError if num.class != Integer
      tiles = []
      num.times do
        t = rand(0..(@tile_bag.length - 1))
        tiles.push(@tile_bag[t])
        @tile_bag.delete(t)
      end
      return tiles
    end

  end

end
