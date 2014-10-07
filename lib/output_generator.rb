class OutputGenerator
  
  def execute(output, file_type)
    File.open("resume_#{Time.now.to_i}.csv", 'w') do |file|
      file.puts(output)
    end
  end
end