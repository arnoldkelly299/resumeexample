import 'dart:typed_data';
import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/pdf.dart';

Future<Uint8List> generateResumePdf(PdfPageFormat format) async {
  final pdf = pw.Document();

  pdf.addPage(
    pw.Page(
      pageFormat: format,
      build: (context) {
        return pw.Container(
          // color: PdfColors.deepPurple,
          child: pw.Column(
            children: [
              pw.Center(
                child: pw.Text(
                  "Kelly Odey",
                  style: pw.TextStyle(
                      fontSize: 35, fontWeight: pw.FontWeight.bold),
                ),
              ),
              pw.SizedBox(height: 10),
              pw.Text(
                """
Enthusiastic Computer Science student with a foundation in app and web developments,
seeking an internship to apply and expand my technical skills
in a real-world setting. Committed to 
contributing value through innovative projects and collaborative teamwork.""",
                style: pw.TextStyle(fontSize: 16),
                textAlign: pw.TextAlign.center,
              ),
              pw.SizedBox(height: 20),
              pw.Text("arnoldkelly299@gmail.com"),
              pw.Text("07039929446"),
            ],
          ),
        );
      },
    ),
  );

  return pdf.save();
}
