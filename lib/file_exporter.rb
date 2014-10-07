# Parent class of exporters
class FileExporter
  def export(output)
    raise 'Method not implemented'
  end

  def get_file_name(file_type)
    "resume_#{Time.now.to_i}.#{file_type}"
  end
end
