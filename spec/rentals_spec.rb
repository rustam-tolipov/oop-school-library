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
