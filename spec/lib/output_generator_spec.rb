require 'spec_helper'
require 'output_generator.rb'

describe OutputGenerator do

  let (:output_generator) { OutputGenerator.new }
  let (:resume) { "name,Zombie\nage,5" }

  describe '#execute' do

    context "in csv format" do
      let (:output_format) { "csv" } 
      after(:all) do
        file_array = Dir['resume_*.csv']
        file_array.each { |f| File.delete(f) }
      end

      it 'creates file' do
        output_generator.execute resume, output_format
        expect !(Dir['resume_*.csv'].empty?)
      end
    end

  end
end
