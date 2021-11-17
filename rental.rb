class Rental
  attr_reader :person, :book
  attr_accessor :date

  def initialize(person, book, date)
    @person = person
    person.rentals << self
    @book = book
    book.rentals << self
    @date = date
  end
end
