import 'package:flutter/material.dart';



class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Colors.orange[50],
        elevation: 0,
      
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // User avatar with username and edit button
            Row(
              children: [
                const CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.brown,
                ),
                const SizedBox(width: 16),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Username',
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Vishwash',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                // Edit button aligned to the right
                IconButton(
                  icon: const Icon(Icons.edit),
                  onPressed: () {},
                  color: Colors.grey,
                ),
              ],
            ),
            const SizedBox(height: 32),
            // Settings options
            _buildOptionButton(
              icon: Icons.account_circle,
              label: 'Account',
               color: Colors.grey[200],
              iconColor: Colors.brown,
            ),
            const SizedBox(height: 16),
            _buildOptionButton(
              icon: Icons.settings,
              label: 'Settings',
               color: Colors.grey[200],
              iconColor: Colors.brown,
            ),
            const SizedBox(height: 16),
            _buildOptionButton(
              icon: Icons.upload,
              label: 'Export Data',
              color: Colors.grey[200],
              iconColor: Colors.brown,
            ),
            const SizedBox(height: 16),
            _buildOptionButton(
              icon: Icons.logout,
              label: 'Logout',
               color: Colors.grey[200],
              iconColor: Colors.red,
            ),
            
          ],
        ),
      ),
    );
  }

  Widget _buildOptionButton(
      {required IconData icon,
      required String label,
      required Color? color,
      required Color iconColor}) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: iconColor.withOpacity(0.2),
            child: Icon(
              icon,
              color: iconColor,
            ),
          ),
          const SizedBox(width: 16),
          Text(
            label,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
