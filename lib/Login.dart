import 'package:expensetracker/Dashboard.dart';
import 'package:expensetracker/Email.dart';
import 'package:expensetracker/Home.dart';
import 'package:expensetracker/Reset_password.dart';
import 'package:expensetracker/Signup.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.orange[50]
      ),
       backgroundColor: Colors.white, // Background color to match the design
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left:20,right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Top image (adjusted for full width fit)
              Expanded(
                child: Image.asset(
                  'assets/images/Login_image.png',
                  fit: BoxFit.contain,  // Adjusted to contain image within the box
                  width: double.infinity, // Full width of the container
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    // Email TextField
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.email),
                        labelText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                         filled: true,
                        fillColor: Colors.grey[200],
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Password TextField
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.lock),
                        labelText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                         filled: true,
                        fillColor: Colors.grey[200],
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Login Button
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 114, 79, 45), // Button color to match the design
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                      ),
                      child: const Text(
                        'LOGIN',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Forget Password and New User TextButtons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => EmailFormPage()),
                            );
                          },
                          child: const Text('Forget Password'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SignupPage()),
                            );
                          },
                          child: const Text('New User'),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
