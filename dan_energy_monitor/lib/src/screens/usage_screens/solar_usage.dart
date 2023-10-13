import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../widgets/bar_chart/solar_bar_chart.dart';

class SolarUsage extends StatefulWidget {
  const SolarUsage({
    super.key,
  });

  @override
  State<SolarUsage> createState() => _SolarUsageState();
}

class _SolarUsageState extends State<SolarUsage> {
  String selectedRange = "this week";
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white24,
        child: Column(
          children: [
            DropdownButton<String>(
              value: selectedRange,
              items: ["this week", "monthly"].map((value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: text(value, 14),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  selectedRange = newValue!;
                });
              },
            ),
            SolarEnergyProduction(selectedRange),
            const AspectRatio(
              aspectRatio: 5 / 2,
              child: Card(
                margin: EdgeInsets.fromLTRB(20, 20, 15, 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Total Usage 234kwh"),
                    Text("Max Usage 100 kwh"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Text text(String text, double fontSize, {FontWeight? fontWeight}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: GoogleFonts.roboto(
        fontSize: fontSize,
        fontStyle: FontStyle.normal,
        fontWeight: fontWeight ?? FontWeight.w500),
  );
}
