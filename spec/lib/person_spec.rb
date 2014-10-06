require 'spec_helper'
require 'person.rb'

RSpec.describe Person do

  dummy = {
    name: 'Zombie',
    age: 5
  }

  subject(:dummy_person) { Person.new(dummy[:name], dummy[:age]) }

  it 'should have the name Zombie' do
    expect(dummy_person.name).to eq(dummy[:name])
  end

  it 'should have age 5' do
    expect(dummy_person.age).to eq(dummy[:age])
  end

  describe '#create_output' do
    it 'should create resume in csv format' do
      dummy_person.create_resume
      resume_csv_array = Dir['resume_*.csv']
      expect(resume_csv_array.include?("resume_#{dummy[:name]}.csv"))
    end

    it 'the file should have the right contents' do
      output_hash = {}
      File.open("resume_#{dummy[:name]}.csv", 'r') do |file|
        file.each_line do |line|
          output = line.strip.split(',')
          output_hash[output[0].to_sym] = output[1]
        end
      end

      output_hash.each do |key, value|
        expect(value).to eq(dummy[key.to_sym].to_s)
      end
    end
  end
end
