require_relative 'person'

class Teacher < Person
  def initialize(name = "Unknown", age = 0, parent_permission = true, specialization = "Unknown")
    super(name, age, parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    return true
  end
end

puts "Teacher class:"
teacher = Teacher.new("Rustam", 20, true, "Ruby")
puts "Teacher id: #{teacher.get_id}"
puts "Teacher name: #{teacher.get_name}"
puts "Teacher age: #{teacher.get_age}"
puts "Teacher is of age: #{teacher.is_of_age?}"