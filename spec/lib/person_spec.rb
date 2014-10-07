require 'spec_helper'
require 'person.rb'

RSpec.describe Person do

  let(:dummy) do
    {
      name: 'Zombie',
      age: 5
    }
  end

  let(:dummy_person) { Person.new(dummy[:name], dummy[:age]) }
  let(:expected_output) { "name,#{dummy[:name]}\nage,#{dummy[:age]}" }

  describe 'instantiation' do
    it 'sets the name' do
      expect(dummy_person.name).to eq(dummy[:name])
    end

    it 'sets the age' do
      expect(dummy_person.age).to eq(dummy[:age])
    end
  end

  describe '#create_resume' do
    it 'creates resume in string format' do
      expect(dummy_person.create_resume).to eq(expected_output)
    end
  end
  # describe "output file" do
  #   it 'the csv file should have name and age' do
  #     output_hash = {}
  #     File.open("resume_#{dummy[:name]}.csv", 'r') do |file|
  #       file.each_line do |line|
  #         output = line.strip.split(',')
  #         output_hash[output[0].to_sym] = output[1]
  #       end
  #     end

  #     output_hash.each do |key, value|
  #       expect(value).to eq(dummy[key.to_sym].to_s)
  #     end
  #   end
  # end
end
