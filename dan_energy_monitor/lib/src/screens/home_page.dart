import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '/src/widgets/settings.dart';
import 'check_bill.dart';
import 'monitor_solar_energy.dart';
import 'usage_history.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    var appBar = PreferredSize(
      preferredSize: const Size.fromHeight(50),
      child: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: const Color(0x77008080),
        title: Text(
          widget.title,
          textAlign: TextAlign.center,
          style: GoogleFonts.roboto(
            letterSpacing: 2,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          MySetting(),
        ],
      ),
    );

    return Scaffold(
      appBar: currentPageIndex == 0 ? appBar : null,
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFFD9D9D9),
        onTap: (index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        currentIndex: currentPageIndex,
        items: [
          navBarItems(Icons.home_outlined, "Home"),
          navBarItems(Icons.history_outlined, "Usage history"),
          navBarItems(Icons.bar_chart_outlined, "Monitor"),
          navBarItems(Icons.price_check_outlined, "Check bill"),
        ],
      ),
      body: _buildScreens()[currentPageIndex],
    );
  }

  List<Widget> _buildScreens() {
    return [
      const HomePageScreen(),
      const UsageHistoryScreen(),
      const MonitorSolarEnergyScreen(),
      const CheckBillScreen(),
    ];
  }

  BottomNavigationBarItem navBarItems(IconData icon, String label) {
    return BottomNavigationBarItem(icon: Icon(icon), label: label);
  }
}

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white24,
      child: OrientationBuilder(
        builder: (context, orientation) {
          double width = orientation == Orientation.portrait ? 100 : 150;
          double height = orientation == Orientation.portrait ? 150 : 100;

          return buildHomePage(width, height);
        },
      ),
    );
  }

  Widget buildHomePage(double width, double height) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildSection("Electric Energy", "Usage", "45 kwh"),
          _buildSection("Electric Energy", "Bill", "58.5 ETB"),
          const Divider(),
          _buildSection("Solar Energy", "Saved", "10 kwh"),
          _buildSection("Solar Energy", "Saved", "13 ETB"),
        ],
      ),
    );
  }

  Widget _buildSection(String title, String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 100,
          height: 150,
          child: Card(
            margin: const EdgeInsets.all(8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  " $value ",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "to day",
                  style: TextStyle(
                    fontSize: 8,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
