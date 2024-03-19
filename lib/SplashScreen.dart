import 'package:eyeflu/ts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:gif/gif.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget  {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin{
late GifController _controller ;

  @override
  void initState() {
    super.initState();
    _controller = GifController(vsync: this);
    // _controller.repeat(min: 0, max: 100, period: Duration(seconds: 3));
    _navigateToNextScreen();
  }

  @override
  void dispose() {
      _controller.dispose();
    super.dispose();
  }

  void _navigateToNextScreen() {
    Future.delayed(Duration(seconds: 5), () {
      // Navigate to the next screen
      // Replace `NextScreen()` with your desired screen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => TfliteModel()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Gif(
                  controller: _controller,
                  duration: const Duration(seconds: 5),
                  autostart: Autostart.once,
                  placeholder: (context) =>
                      const Center(child: CircularProgressIndicator()),
                  image: const AssetImage('assets/eye.gif'),
                ),
            SizedBox(height: 20),
            Text(
              'Eye Flu Detection',
              style: GoogleFonts.charmonman(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
