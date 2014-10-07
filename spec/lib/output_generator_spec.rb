require 'spec_helper'
require 'output_generator.rb'

describe OutputGenerator do

  let(:output_generator) { OutputGenerator.new }
  let(:resume) { "name,Zombie\nage,5" }

  describe '#execute' do

    after(:all) do
      file_array = Dir['resume_*.*']
      file_array.each { |f| File.delete(f) }
    end

    it 'creates resume in csv format' do
      output_generator.execute(resume, 'csv')
      expect(Dir['resume_*.csv'].empty?).to eq(false)
    end

    it 'creates resume in pdf format' do
      output_generator.execute(resume, 'pdf')
      expect(Dir['resume_*.pdf'].empty?).to eq(false)
    end

    it 'does not create resume in lion format' do
      output_generator.execute(resume, 'lion')
      expect(Dir['resume_*.lion'].empty?).to eq(true)
    end
  end

  describe '#find_target_class' do
    it "should return CsvExporter on input 'csv'" do
      expect(output_generator.find_target_class('csv')).to eq(CsvExporter)
    end

    it "should return PdfExporter on input 'pdf'" do
      expect(output_generator.find_target_class('pdf')).to eq(PdfExporter)
    end

    it "should return nil on input 'lion'" do
      expect(output_generator.find_target_class('lion')).to eq(nil)
    end
  end
end
