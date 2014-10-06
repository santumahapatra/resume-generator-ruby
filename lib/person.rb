class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def create_resume
    File.open("resume_" + name + ".csv", "w") do |file|
      file.write("name,#{@name}")
      file.write("\n")
      file.write("age,#{@age}")
    end
  end
end