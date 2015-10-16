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

  describe  'includes?()' do
    it 'only accepts strings' do

    end
    it 'test whether a given word is in the dictionary' do

    end
  end

  describe 'add_word' do
    it 'adds a word to the dictionary' do

    end
    it 'only accepts strings' do

    end
    it 'does not add duplicate words' do

    end
  end

end
