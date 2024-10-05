import 'package:expensetracker/Login.dart';
import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       backgroundColor: Colors.orange[50],
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Move the image to the top and adjust its width
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              'assets/images/income_expense_image.png',
              fit: BoxFit.fitWidth,  // Adjust the width to fit the screen
              width: double.infinity, // Full width
              height: 220,  // Optional: Set height
            ),
          ),
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 10),
                    // Reset Password Text
                    const Text(
                      'Reset Password',
                       style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                    ),
                    const SizedBox(height: 40),

                    // New Password Input Field
                    const Text(
                      'New Password',
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 10),
                    const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        filled: true,
                        fillColor: Color.fromARGB(255, 231, 226, 226),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Confirm Password Input Field
                    const Text(
                      'Confirm Password',
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 10),
                    const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        filled: true,
                        fillColor: Color.fromARGB(255, 231, 226, 226),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                      ),
                    ),
                    const SizedBox(height: 30),

                    // Reset Button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.brown, // Button color
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          'Reset',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
