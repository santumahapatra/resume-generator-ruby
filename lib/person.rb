
# The Person Object for storing the data
class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def create_resume
    "name,#{@name}\nage,#{@age}"
  end
end
