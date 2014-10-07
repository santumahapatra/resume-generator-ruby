# Creates CSV format of the Resume
class CsvExporter < FileExporter
  def export(output, file_type)
    file_name = get_file_name file_type
    File.open(file_name, 'w') do |file|
      file.write(output)
    end
  end
end
