require_relative 'corrector'

class Person
  attr_accessor :name, :age, :parent_permission, :id

  def initialize(name: 'Unknown', age: 0, parent_permission: true)
    @id = rand(1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @corrector = Corrector.new(@name)
  end

  def can_use_services?
    true
  end

  def validate_name
    @name = @corrector.correct_name
  end

  private

  def of_age?
    @age >= 18
  end
end

person = Person.new(name: 'Rustamjon', age: 19)
person.validate_name
puts person.name
