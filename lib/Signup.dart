// import 'package:demo/image.dart';
import 'package:expensetracker/Login.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Colors.orange[50],
      ),
       backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Top Image
            Container(
              height: 250,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/calculator_image.png'), // Update to your actual image path
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Signup Page Title
            const Text(
              'Signup page',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            // Email Input Field
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.email, color: Colors.black),
                  hintText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                     filled: true,
                        fillColor: Colors.grey[200],
                ),
              ),
            ),
            const SizedBox(height: 10),
            // Password Input Field
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock, color: Colors.black),
                  hintText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                     filled: true,
                        fillColor: Colors.grey[200],
                ),
              ),
            ),
            const SizedBox(height: 10),
            // Confirm Password Input Field
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.check, color: Colors.black),
                  hintText: 'Confirm password',
                  
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                     filled: true,
                        fillColor: Colors.grey[200],
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Signup Button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown,
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                 Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>LoginPage()),
                  );
              },
              child: const Text(
                'Sign up',
                 style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
              ),
            ),
            const SizedBox(height: 10),
            // Exiting User Text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      // Navigate to login or other pages
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));

                    },
                    child: const Text(
                      'Existing User',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
