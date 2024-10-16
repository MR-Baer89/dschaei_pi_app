import 'dart:ui';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(218, 168, 112, 225),
                  Color.fromARGB(255, 200, 122, 255)
                ],
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
              ),
            ),
            child: const Text(
              'Food Menu',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          _buildDrawerItem(context, Icons.icecream, "Mogli's Cup"),
          _buildDrawerItem(context, Icons.icecream, "Balu's Cup"),
          _buildDrawerItem(context, Icons.icecream, "Ice Cream Stick"),
          _buildDrawerItem(context, Icons.icecream, "Ice Cup"),
        ],
      ),
    );
  }

  Widget _buildDrawerItem(BuildContext context, IconData icon, String title) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: () {
        Navigator.pop(context);
      },
    );
  }
}
