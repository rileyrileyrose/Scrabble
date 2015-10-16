require "./lib/dictionary.rb"

describe Scrabble::Dictionary do
before :each do
  @dict = Scrabble::Dictionary.new
end

  describe 'new' do
    it 'creates a dictionary array' do
      expect(@dict.dictionary).to be_a (Array)
    end
    it 'is an array of all strings' do
      random = rand(0..(@dict.dictionary.length - 1))
      expect(@dict.dictionary[random]).to be_a(String)
    end
  end

  describe  'is_valid?' do
    it 'only accepts strings' do
      expect{@dict.is_valid?(9)}.to raise_error ArgumentError
    end
    it 'test whether a given word is in the dictionary' do
      expect(@dict.is_valid?("apple")).to be_truthy
    end
  end

  describe 'add_word' do
    it 'adds a word to the dictionary' do
      @dict.add_word("fire")
      expect(@dict.is_valid?("fire")).to be_truthy
    end
    it 'only accepts strings' do
      expect{@dict.add_word(9)}.to raise_error ArgumentError
    end
    it 'does not add duplicate words' do
      expect{@dict.add_word("apple")}.to raise_error ArgumentError
    end
  end

end
