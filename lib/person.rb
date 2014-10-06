# The Person Object for storing the data
class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def create_resume
    File.open('resume_' + name + '.csv', 'w') do |file|
      file.puts("name,#{@name}")
      file.puts("age,#{@age}")
    end
  end
end
