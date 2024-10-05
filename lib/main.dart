import 'package:expensetracker/Dashboard.dart';
import 'package:expensetracker/Editprofile.dart';
import 'package:expensetracker/Otp.dart';
import 'package:expensetracker/Transaction.dart';
import 'package:expensetracker/User.dart';
import 'package:expensetracker/provider/lib/provider/change_index_provider.dart';
import 'package:expensetracker/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ChangeIndexProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    
      
      home: SplashScreen(),
    
    );
  }
}
