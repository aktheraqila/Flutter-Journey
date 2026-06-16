import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final int passedValue;

  const DetailsScreen({super.key, required this.passedValue});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Received counter value:',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 15),
            Text(
              passedValue.toString(),
              style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Navigator.pop requirement met
                Navigator.pop(context);
              },
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}