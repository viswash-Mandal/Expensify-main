import 'package:expensetracker/Editprofile.dart';
import 'package:expensetracker/Email.dart';
import 'package:expensetracker/Financial.dart';
import 'package:expensetracker/Home.dart';
import 'package:expensetracker/Login.dart';
import 'package:expensetracker/Otp.dart';
import 'package:expensetracker/Signup.dart';
import 'package:expensetracker/Statement.dart';
import 'package:expensetracker/Transaction.dart';
import 'package:expensetracker/User.dart';
import 'package:expensetracker/controllers/bottomnavcontroller.dart';
import 'package:expensetracker/startpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomeScreen extends StatelessWidget {
  final BottomNavController controller = Get.put(BottomNavController());

  final List<Widget> pages = [
    Dashboard(),
    FinancialReportScreen(),
    AddTransactionScreen(),
    StatementScreen(),
    UserProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => pages[controller.selectedIndex.value]),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            currentIndex: controller.selectedIndex.value,
            onTap: controller.changeTabIndex,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.attach_money_rounded), label: 'Report'),
              BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
              BottomNavigationBarItem(icon: Icon(Icons.stacked_bar_chart_outlined), label: 'Statements'),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
            ],
          )),
    );
  }
}
