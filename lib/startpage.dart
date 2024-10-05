
import 'package:expensetracker/Login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Startpage());
}

class Startpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Image Section
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Image.asset(
                    'assets/images/start_page.png',
                   fit: BoxFit.cover,
                  ),
                ),
              ),

              // Text Section
            Expanded(child: Column(
              children: [
                Text(
                'Save For Better Tomorrow',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10), 
              Text(
                'Counter and distribute the income\ncorrectly...',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[700],
                ),
              ),
              SizedBox(height: 30), 

              
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown, 
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {
                
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>LoginPage()),
                  );
                },
                child: Text(
                  'Continue',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
              ],
            ))
            ],
          ),
        ),
      ),
    );
  }
}
