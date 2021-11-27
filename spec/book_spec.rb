require './book'
require 'rspec'

require './book'
require 'rspec'

RSpec.describe Book do
  before(:each) do
    @book = Book.new('title', 'author')
  end

  describe '#initialize' do
    it 'should have a title' do
      expect(@book.title).to eq('title')
    end

    it 'should have an author' do
      expect(@book.author).to eq('author')
    end

    it 'should have no rentals' do
      expect(@book.rentals).to eq([])
    end
  end
end

RSpec.configure do |config|
  config.color = true
  config.formatter = :documentation
end 

RSpec.configure do |config|
  config.color = true
  config.formatter = :documentation
end
