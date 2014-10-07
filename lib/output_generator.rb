require 'prawn'

# Generates output file
class OutputGenerator
  def execute(output, file_type)
    if file_type == 'csv'
      File.open("resume_#{Time.now.to_i}.csv", 'w') do |file|
        file.write(output)
      end
    elsif file_type == 'pdf'
      pdf_file = "resume_#{Time.now.to_i}.pdf"

      pdf = Prawn::Document.new
      pdf.text(output)
      pdf.render_file pdf_file
    end
  end

  def get_file_name(file_type)
    "resume_#{Time.now.to_i}.#{file_type}"
  end
end
