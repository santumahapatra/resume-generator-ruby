require 'spec_helper'
require 'file_exporter.rb'

describe FileExporter do
  let(:file_exporter) { FileExporter.new }

  describe '#get_file_name' do
    let(:output_format) { 'csv' }

    it 'creates the correct file name' do
      file_name = /resume_[\d]+.#{output_format}/
      expect(file_exporter.get_file_name(output_format)).to match(file_name)
    end
  end

  describe '#self.descendants' do
    it 'should be an ancestor to CsvExporter' do
      expect((FileExporter.descendants).include?(CsvExporter)).to be(true)
    end

    it 'should not be an ancestor to LionExporter' do
      expect((FileExporter.descendants).include?(:LionExporter)).to be(false)
    end
  end
end
