class Person
  attr_accessor :name, :age, :parent_permission
  def initialize(name = "Unknown", age = 0, parent_permission = true)
    @id = rand(1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def get_id
    @id
  end

  def get_name
    @name
  end

  def get_age
    @age
  end

  def set_name(name)
    @name = name
  end

  def set_age(age)
    @age = age
  end

  def is_of_age?
    if @age >= 18
      return true
    else
      return false
    end
  end

  def can_use_services?
    if is_of_age? || @parent_permission
      return true
    else
      return false
    end
  end
end

puts "Person class:"
person = Person.new("Rustam", 20, true)
puts "Person id: #{person.get_id}"
puts "Person name: #{person.get_name}"
puts "Person age: #{person.get_age}"
puts "Person is of age: #{person.is_of_age?}"
puts "Person can use services: #{person.can_use_services?}"
puts "Person can change name: #{person.respond_to?("set_name")}"
puts "Person can change age: #{person.respond_to?("set_age")}"
puts "Person can play hooky: #{person.respond_to?("play_hooky")}"
puts ""
