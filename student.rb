require_relative 'person'

class Student < Person
  def initialize(name: 'Unknown', age: 0, parent_permission: true, classroom: 'Unknown')
    super(name, age, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
