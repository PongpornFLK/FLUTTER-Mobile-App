import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PagePDF extends StatefulWidget {
  const PagePDF({super.key});

  @override
  State<PagePDF> createState() => _PagePDFState();
}

class _PagePDFState extends State<PagePDF> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Text(
                "PDF",
                style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
