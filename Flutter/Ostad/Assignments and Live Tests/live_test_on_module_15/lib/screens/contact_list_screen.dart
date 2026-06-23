import 'package:flutter/material.dart';
import '../widgets/contact_tile.dart';

class ContactListScreen extends StatelessWidget {
  const ContactListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f5f5),

      body: SafeArea(
        child: Column(
          children: [

            Container(
              height: 50,
              width: double.infinity,
              color: Colors.blueGrey,
              alignment: Alignment.center,
              child: const Text(
                "Contact List",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [

                    TextFormField(
                      initialValue: "Hasan",
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),

                    const SizedBox(height: 12),

                    TextFormField(
                      initialValue: "01745-777777",
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),

                    const SizedBox(height: 12),

                    SizedBox(
                      width: double.infinity,
                      height: 45,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Add",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),

                    const SizedBox(height: 35),

                    Expanded(
                      child: ListView(
                        children: const [

                          ContactTile(
                            name: "Jawad",
                            phone: "01877-777777",
                          ),

                          ContactTile(
                            name: "Ferdous",
                            phone: "01673-777777",
                          ),

                          ContactTile(
                            name: "Hasan",
                            phone: "01745-777777",
                          ),

                          ContactTile(
                            name: "Hasan",
                            phone: "01745-777777",
                          ),

                          ContactTile(
                            name: "Hasan",
                            phone: "01745-777777",
                          ),
                        ],
                      ),
                    ),
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