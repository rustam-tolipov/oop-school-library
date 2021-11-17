require './corrector'

class Person
  attr_accessor :name, :age, :parent_permission, :rentals
  attr_reader :id, :corrector

  def initialize(name, age, parent_permission = { parent_permission: true })
    @id = rand(1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @corrector = Corrector.new
    @rentals = []
  end

  def of_age?
    @age >= 18
  end

  def can_use_services?
    of_age && parent_permission[:parent_permission]
  end

  def validate_name
    @name = @corrector.correct_name
  end

  def add_rental(date, book)
    Rental.new(date, book)
  end

  private :of_age?
end
