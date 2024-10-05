import 'package:flutter/material.dart';



class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Colors.orange[50],
      ),
        backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'MONDAY 9\nNOVEMBER',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      CircleAvatar(
                        child: Icon(Icons.person),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Account Balance',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '₹ 9400.0',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  'Income',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  '25000',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  'Expenses',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  '11500',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Recent Transaction',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'VIEW ALL',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(Icons.arrow_downward, color: Colors.green),
                    title: Text('₹ 15000'),
                    subtitle: Text('Income'),
                  ),
                  ListTile(
                    leading: Icon(Icons.arrow_upward, color: Colors.red),
                    title: Text('₹ 6500'),
                    subtitle: Text('Food'),
                  ),
                  ListTile(
                    leading: Icon(Icons.arrow_downward, color: Colors.green),
                    title: Text('₹ 2800'),
                    subtitle: Text('Income'),
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
