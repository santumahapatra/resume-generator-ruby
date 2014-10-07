require 'spec_helper'
require 'output_generator.rb'

describe OutputGenerator do

  let (:output_generator) { OutputGenerator.new }
  let (:resume) { "name,Zombie\nage,5" }

  describe '#execute' do

    after(:all) do
      file_array = Dir['resume_*.*']
      file_array.each { |f| File.delete(f) }
    end

    context "in csv format" do
      let (:output_format) { "csv" } 

      it 'creates file' do
        output_generator.execute resume, output_format
        expect(Dir['resume_*.csv'].empty?).to eq(false)
      end
    end

    context "in pdf format" do
      let (:output_format) { "pdf" } 

      it 'creates file' do
        output_generator.execute resume, output_format
        expect(Dir['resume_*.pdf'].empty?).to eq(false)
      end
    end

  end
end
