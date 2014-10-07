require 'spec_helper'
require 'format_csv_exporter.rb'

describe CsvExporter do
  let(:csv_exporter) { CsvExporter.new }

  describe '#export' do
    let(:resume) { "name,Zombie\nage,5" }

    after(:all) do
      file_array = Dir['resume_*.*']
      file_array.each { |f| File.delete(f) }
    end

    it 'creates resume in csv format' do
      csv_exporter.export resume
      expect(Dir['resume_*.csv'].empty?).to eq(false)
    end
  end

  describe '#self.respond_to(file_type)' do
    it 'returns true if input is csv' do
      expect(CsvExporter.respond_to('csv')).to eq(true)
    end

    it 'returns false if input is txt' do
      expect(CsvExporter.respond_to('txt')).to eq(false)
    end
  end
end
