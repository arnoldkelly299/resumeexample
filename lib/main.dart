import 'package:flutter/material.dart';
import 'package:printing/printing.dart';
import 'resume.dart';
// import 'package:flutter_pdfview/flutter_pdfview.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Resume Viewer',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.deepPurple,
        title: const Padding(
          padding: EdgeInsets.only(top: 35.0, right: 20),
          child: Text(
            'MY RESUME',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 25,
                wordSpacing: 10),
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: PdfPreview(
          build: (format) => generateResumePdf(format),
        ),
      ),
    );
  }
}
