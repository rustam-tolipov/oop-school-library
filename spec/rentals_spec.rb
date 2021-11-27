require './person'
require './student'
require './teacher'
require './rental'
require './book'
require 'rspec'

RSpec.describe Rental do
  describe '#rentals' do
    it 'should return an empty array' do
      person = Person.new('Rustamjon', 20)
      expect(person.rentals).to eq([])
    end
  end

  describe '#initialize' do
    it 'should initialize a rental with a date' do
      book = Book.new('The Hobbit', 'J.R.R. Tolkien')
      student = Student.new('Rustamjon', 20, { parent_permission: true })
      rental = Rental.new('2018-05-01', book, student)
      expect(rental.date).to eq('2018-05-01')
    end
  end

  describe '#book' do
    it 'should return a book' do
      book = Book.new('The Hobbit', 'J.R.R. Tolkien')
      student = Student.new('Rustamjon', 20, { parent_permission: true })
      rental = Rental.new('2018-05-01', book, student)
      expect(rental.book).to eq(book)
    end
  end

  describe '#person' do
    it 'should return a person' do
      book = Book.new('The Hobbit', 'J.R.R. Tolkien')
      student = Student.new('Rustamjon', 20, { parent_permission: true })
      rental = Rental.new('2018-05-01', book, student)
      expect(rental.person).to eq(student)
    end
  end
end
