require 'prawn'

class OutputGenerator
  
  def execute(output, file_type)
    if file_type == "csv"
      File.open("resume_#{Time.now.to_i}.csv", 'w') do |file|
        file.write(output)
      end
    elsif file_type == "pdf"
      pdf_file = "resume_#{Time.now.to_i}.pdf"

      pdf = Prawn::Document.new
      pdf.text(output)
      pdf.render_file pdf_file
    end
  end
end