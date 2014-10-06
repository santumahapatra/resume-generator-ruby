require "spec_helper"
require "person.rb"

describe Person do
  it 'should have the name Zombie' do
    (expect(Person.new("Zombie").name).to eq("Zombie"))
  end
end