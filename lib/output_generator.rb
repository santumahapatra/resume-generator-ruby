# Generates output file
class OutputGenerator
  def execute(resume, file_type)
    target = find_target_class(file_type)
    target.new.export(resume) if target != nil
  end

  def find_target_class(file_type)
    FileExporter.descendants.detect { |klass| klass.respond_to file_type }
  end
end
