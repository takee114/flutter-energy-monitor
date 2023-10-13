import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../widgets/line_chart/generator_usage.dart';

class GeneratorUsage extends StatelessWidget {
  const GeneratorUsage({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white24,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total Runtime",
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                  letterSpacing: 1,
                  fontSize: 18,
                  fontStyle: FontStyle.normal,
                ),
              ),
              GeneratorUsageChart(),
            ],
          ),
        ),
      ),
    );
  }
}
