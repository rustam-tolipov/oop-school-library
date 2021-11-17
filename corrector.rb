class Corrector
  def initialize(name)
    @name = name
  end

  def correct_name
    @name = @name.capitalize
    @name = @name[0..9]
  end
end
