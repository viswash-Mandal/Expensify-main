

import 'package:flutter/material.dart';

class StatementScreen extends StatelessWidget {
  final List<Map<String, dynamic>> statements = [
    {
      "category": "Shopping",
      "subCategory": "ShopSpree",
      "amount": "-7032",
      "time": "10:20 AM"
    },
    {
      "category": "Food",
      "subCategory": "MealMate",
      "amount": "-2072",
      "time": "03:12 AM"
    },
    {
      "category": "Salary",
      "subCategory": "PayStream",
      "amount": "-4089",
      "time": "09:34 AM"
    },
    {
      "category": "Subscription",
      "subCategory": "SubTrack",
      "amount": "-786",
      "time": "05:33 AM"
    },
    {
      "category": "Fuel",
      "subCategory": "GasGauge",
      "amount": "-3023",
      "time": "07:11 AM"
    },
    {
      "category": "Cinema",
      "subCategory": "CineSpend",
      "amount": "-400",
      "time": "03:45 AM"
    },
  ];

   StatementScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: const Text('Statements'),
        backgroundColor: Colors.orange[50],
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.filter_alt_outlined, color: Colors.black),
                Text("Monthly", style: TextStyle(color: Colors.black)),
                SizedBox(width: 8),
                Icon(Icons.filter_list, color: Colors.black),
                Text("All", style: TextStyle(color: Colors.black)),
              ],
            ),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: statements.length,
        itemBuilder: (context, index) {
          final statement = statements[index];
          return Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      statement['category'],
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      statement['amount'],
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      statement['subCategory'],
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      statement['time'],
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
      backgroundColor: const Color(0xFFF5F5F5),
    );
}
