class Person
  attr_accessor :name, :age, :parent_permission, :id

  def initialize(name: 'Unknown', age: 0, parent_permission: true)
    @id = rand(1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    true
  end

  private

  def of_age?
    @age >= 18
  end
end
