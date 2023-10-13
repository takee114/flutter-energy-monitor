import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/line_chart/line_chart_widget.dart';

class MonitorSolarEnergyScreen extends StatelessWidget {
  const MonitorSolarEnergyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white24,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: AppBar(
            elevation: 0,
            centerTitle: true,
            backgroundColor: const Color(0x77008080),
            title: Text(
              "Monitor Solar Energy",
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                  letterSpacing: 2,
                  fontSize: 20,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Produced Energy",
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                  letterSpacing: 1,
                  fontSize: 18,
                  fontStyle: FontStyle.normal,
                ),
              ),
              LineChartWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
