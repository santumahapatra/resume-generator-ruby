require 'spec_helper'
require 'format_csv_exporter.rb'

describe CsvExporter do
  let(:csv_exporter) { CsvExporter.new }

  describe '#export' do
    let(:resume) { "name,Zombie\nage,5" }
    let(:output_format) { 'csv' }

    after(:all) do
      file_array = Dir['resume_*.*']
      file_array.each { |f| File.delete(f) }
    end

    it 'creates resume in csv format' do
      csv_exporter.export resume, output_format
      expect(Dir['resume_*.csv'].empty?).to eq(false)
    end
  end
end
