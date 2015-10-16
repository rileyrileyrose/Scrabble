require "./lib/dictionary.rb"

describe Dictionary do
before :each do
  @dict = Scrabble::Dictionary.new
end

  describe 'new' do
    it 'creates a dictionary array' do

    end
    it 'is an array of all strings' do
      @dict.dictionary[rand(0..(@dict.dictionary.length - 1)]
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
