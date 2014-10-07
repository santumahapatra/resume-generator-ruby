# Creates CSV format of the Resume
class CsvExporter < FileExporter
  @@format = 'csv'

  def export(output)
    file_name = get_file_name @@format
    File.open(file_name, 'w') do |file|
      file.write(output)
    end
  end
end
