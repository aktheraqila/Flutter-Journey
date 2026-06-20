import 'package:flutter/material.dart';
import '../widgets/profile_card.dart';
import '../widgets/interest_card.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  // Required setState variable
  bool isFollowing = false;

  void handleFollowToggle() {
    setState(() {
      isFollowing = !isFollowing;
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(isFollowing ? "You are now following Aqila Akther!" : "Unfollowed Aqila Akther."),
        backgroundColor: Colors.blue[800],
        duration: const Duration(seconds: 2),
      ),
    );
  }

  void showDetailsDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          title: const Text("User Details"),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Name: Aqila Akther", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Text("Profession: Flutter Developer"),
              SizedBox(height: 8),
              Text("Email: aqila@example.com"),
              SizedBox(height: 8),
              Text("Phone: +123 456 7890"),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Close"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                // Top Profile Card
                ProfileCard(
                  isFollowing: isFollowing,
                  onFollow: handleFollowToggle,
                  onViewProfile: showDetailsDialog,
                ),

                const SizedBox(height: 30),

                // Interests Title Section
                Row(
                  children: [
                    Expanded(child: Divider(color: Colors.grey[400], thickness: 1)),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        "Interests",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(child: Divider(color: Colors.grey[400], thickness: 1)),
                  ],
                ),

                const SizedBox(height: 16),

                // Bottom Interests Cards
                const Row(
                  children: [
                    Expanded(
                      child: InterestCard(
                        title: "Travel",
                        subtitle: "Exploring new places around the world",
                        imagePath: "assets/images/travel.png",
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: InterestCard(
                        title: "Photography",
                        subtitle: "Capturing moments through the lens",
                        imagePath: "assets/images/photography.png",
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}