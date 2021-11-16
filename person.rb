class Person
  attr_accessor :name, :age, :parent_permission

  def initialize(name: 'Unknown', age: 0, parent_permission: true)
    @id = rand(1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def getter_id
    @id
  end

  def getter_name
    @name
  end

  def getter_age
    @age
  end

  def setter_name(name)
    @name = name
  end

  def setter_age(age)
    @age = age
  end

  def of_age?
    @age >= 18
  end

  private :of_age?

  def can_use_services?
    true
  end

  public :can_use_services?
end
