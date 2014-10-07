require 'prawn'

# Creates PDF format of the Resume
class PdfExporter < FileExporter
  def export(output, file_type)
    pdf_file = get_file_name file_type
    pdf = Prawn::Document.new
    pdf.text(output)
    pdf.render_file pdf_file
  end
end
