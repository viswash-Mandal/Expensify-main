import 'package:expensetracker/Otp.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(EmailFormPage());
}

class EmailFormPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
             backgroundColor: Colors.orange[50],
        ),
           backgroundColor: Colors.white,
        body: Column(
          children: [
            // Wrapping the image to adjust the height and moving it to the top
            Image.asset(
              'assets/images/income_expense_image.png',
              fit: BoxFit.fitWidth, // Ensure the image fits the full width
              width: double.infinity, // Full screen width
              height: MediaQuery.of(context).size.height * 0.3, // 30% of screen height
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 30),

                    // Email input field
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        filled: true,
                        fillColor: Colors.grey[200],
                      ),
                    ),
                    SizedBox(height: 20),

                    // Submit button
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.brown,
                        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => OTPScreen()),
                        );
                      },
                      child: Text(
                        'Submit',
                         style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),

                    Spacer(), // Adds empty space at the bottom after the button
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
