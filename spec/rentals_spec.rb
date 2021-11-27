# class Rental
#   attr_reader :book, :person
#   attr_accessor :date

#   def initialize(date, book, person)
#     @date = date
#     @book = book
#     @person = person
#     book.rentals << self
#     person.rentals << self
#   end

#   def to_json(*args)
#     {
#       JSON.create_id => self.class.name,
#       'date' => @date,
#       'book' => @book,
#       'person' => @person
#     }.to_json(*args)
#   end
# end

require './person'
require './student'
require './teacher'
require './rental'
require './book'
require 'rspec'

RSpec.describe Rental do
  describe '#initialize' do
    it 'should initialize a rental with a date' do
      rental = Rental.new('2018-05-01', Book.new('The Hobbit', 'J.R.R. Tolkien'),
                          Student.new('Rustamjon', 20, { parent_permission: true }))
      expect(rental.date).to eq('2018-05-01')
    end
  end
end
