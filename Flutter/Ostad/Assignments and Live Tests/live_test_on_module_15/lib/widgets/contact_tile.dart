import 'package:flutter/material.dart';

class ContactTile extends StatelessWidget {
  final String name;
  final String phone;

  const ContactTile({
    super.key,
    required this.name,
    required this.phone,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffdddddd),
      elevation: 0,
      margin: const EdgeInsets.only(bottom: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(2),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 6,
        ),

        leading: const Icon(
          Icons.person,
          color: Colors.brown,
          size: 32,
        ),

        title: Text(
          name,
          style: TextStyle(
            color: Colors.red.shade300,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),

        subtitle: Text(
          phone,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
        ),

        trailing: const Icon(
          Icons.phone,
          color: Colors.blue,
          size: 24,
        ),
      ),
    );
  }
}