require_relative 'person'

class Student < Person
  def initialize(name = "Unknown", age = 0, parent_permission = true, classroom = "Unknown")
    super(name, age, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    return "¯\(ツ)/¯"
  end

  def get_classroom
    @classroom
  end
end

puts "Student.superclass: #{Student.superclass}"
puts "Student.new.play_hooky: #{Student.new.play_hooky}"
puts "Student.new.get_classroom: #{Student.new.get_classroom}"