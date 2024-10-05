import 'package:flutter/material.dart';
import 'package:expensetracker/startpage.dart'; // Ensure the correct import for your start page

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    _navigateToStartPage();
  }

  _navigateToStartPage() async {
    // Delay for 2 seconds
    await Future.delayed(const Duration(seconds: 2));

    // Navigate to StartPage after the delay
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) =>  Startpage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromRGBO(246, 236, 222, 1), // Changed opacity to 1 for visibility
        child: const Center(
          child: Text(
            'Expensify',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
