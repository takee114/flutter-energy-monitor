import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckBillScreen extends StatelessWidget {
  const CheckBillScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: const Color(0x77008080),
        title: Text(
          "Check Bill",
          style: GoogleFonts.roboto(
            letterSpacing: 2,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(34, 33, 149, 243),
                Color.fromARGB(27, 76, 175, 79)
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Information",
                        style: GoogleFonts.roboto(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 16),
                      buildInfoRow("Grid Energy Used", "1000 kwh"),
                      buildInfoRow("Saved Energy", "124 kwh"),
                      buildInfoRow("Saved Money", "161.2 ETB"),
                      buildInfoRow("This Month Bill", "1300 ETB"),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildInfoRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: GoogleFonts.roboto(
            fontSize: 18,
            fontWeight: FontWeight.normal,
          ),
        ),
        Text(
          value,
          style: GoogleFonts.roboto(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
