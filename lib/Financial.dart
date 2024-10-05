import 'package:flutter/material.dart';

class FinancialReportScreen extends StatelessWidget {
  const FinancialReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Removed the arrow back button
        title: const Text(
          'Financial Report',
          style: TextStyle(color: Colors.black),
        ),
           backgroundColor: Colors.orange[50],
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Move the image to the top and adjust its width
          Image.asset(
            'assets/images/financial.jpeg',
            fit: BoxFit.cover, // Ensures the image covers the full width
            width: double.infinity, // Stretches the image to fill the width
            height: MediaQuery.of(context).size.height * 0.35, // Adjust the height as needed
          ),
          
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                // Toggle buttons for Expenses and Income
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        minimumSize: const Size(140, 40),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text('Expenses',
                          style: TextStyle(color: Colors.white)),
                    ),
                    const SizedBox(width: 16),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        minimumSize: const Size(140, 40),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text('Income',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                // Financial report bars
                _buildReportRow('Shopping', -1023, Colors.blue, 0.7),
                const SizedBox(height: 16),
                _buildReportRow('Subscription', -5012, Colors.brown, 0.5),
                const SizedBox(height: 16),
                _buildReportRow('Food', -2012, Colors.amber, 0.6),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Function to build each row in the financial report with a progress bar
  Widget _buildReportRow(
      String label, int amount, Color progressColor, double progress) {
    return Row(
      children: [
        // Circular indicator for each category
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: progressColor,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Displaying the label of each report row
              Text(label, style: const TextStyle(fontSize: 16)),
              const SizedBox(height: 8),
              // Linear progress bar for each report row
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: LinearProgressIndicator(
                  value: progress,
                  color: progressColor,
                  backgroundColor: Colors.grey[300],
                  minHeight: 12,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 16),
        // Display the amount in the row
        Text(
          '$amount',
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
