import "package:flutter/material.dart";
import "login.dart";

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(const Duration(milliseconds: 2000), () {});

    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => LoginPage(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Colors.white24),
        child: Column(
          children: [
            Expanded(
              child: OrientationBuilder(builder: (context, orientation) {
                double heightFactor;
                double aspectRatio;
                if (orientation == Orientation.portrait) {
                  heightFactor = 1.5;
                  aspectRatio = 1.0;
                } else {
                  heightFactor = 1.0;
                  aspectRatio = 1;
                }
                return (orientation == Orientation.portrait)
                    ? buildPortrait(heightFactor, aspectRatio)
                    : buildLandscape(heightFactor, aspectRatio);
              }),
            ),
          ],
        ),
      ),
    );
  }

  Center buildPortrait(double heightFactor, double aspectRatio) {
    return Center(
      heightFactor: heightFactor,
      child: AspectRatio(
        aspectRatio: aspectRatio,
        child: const Center(
          child: Image(
              alignment: Alignment.center,
              image: AssetImage("lib/assets/images/logo.jpg")),
        ),
      ),
    );
  }

  Center buildLandscape(double heightFactor, double aspectRatio) {
    return Center(
      heightFactor: heightFactor,
      child: AspectRatio(
        aspectRatio: aspectRatio,
        child: const Image(
            alignment: Alignment.topCenter,
            image: AssetImage("lib/assets/images/logo.jpg")),
      ),
    );
  }
}
