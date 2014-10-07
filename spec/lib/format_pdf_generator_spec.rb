require 'spec_helper'
require 'format_pdf_exporter.rb'

describe PdfExporter do
  let(:pdf_exporter) { PdfExporter.new }

  describe '#export' do
    let(:resume) { "name,Zombie\nage,5" }
    let(:output_format) { 'pdf' }

    after(:all) do
      file_array = Dir['resume_*.*']
      file_array.each { |f| File.delete(f) }
    end

    it 'constructs resume in pdf format' do
      pdf_exporter.export resume, output_format
      expect(Dir['resume_*.pdf'].empty?).to eq(false)
    end
  end
end
