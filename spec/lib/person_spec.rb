require "spec_helper"
require "person.rb"

describe Person do
  dummy_person = Person.new("Zombie", 5)
  
  it 'should have the name Zombie' do
    (expect(dummy_person.name).to eq("Zombie"))
  end

  it 'should have age 5' do
    (expect(dummy_person.age).to eq(5))
  end
end