require 'prawn'

# Creates PDF format of the Resume
class PdfExporter < FileExporter
  @@format = 'pdf'

  def self.respond_to(file_type)
    file_type == @@format
  end

  def export(output)
    pdf_file = get_file_name @@format
    pdf = Prawn::Document.new
    pdf.text(output)
    pdf.render_file pdf_file
  end
end
