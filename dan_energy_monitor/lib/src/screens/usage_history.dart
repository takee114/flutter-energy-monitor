import 'package:EnergyMonitor/src/screens/usage_screens/solar_usage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'usage_screens/electricity_usage.dart';
import 'usage_screens/generator_usage.dart';

class UsageHistoryScreen extends StatefulWidget {
  const UsageHistoryScreen({super.key});

  @override
  State<UsageHistoryScreen> createState() => _UsageHistoryScreenState();
}

class _UsageHistoryScreenState extends State<UsageHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: AppBar(
            backgroundColor: const Color(0x77008080),
            centerTitle: true,
            bottom: TabBar(tabs: [
              tabs("Electricity"),
              tabs("Solar"),
              tabs("Generator"),
            ]),
          ),
        ),
        body: const TabBarView(children: [
          ElectricityUsage(),
          SolarUsage(),
          GeneratorUsage(),
        ]),
      ),
    );
  }

  Text tabs(String text) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: GoogleFonts.roboto(
          fontSize: 17,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w500),
    );
  }
}
