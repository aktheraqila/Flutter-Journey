import 'package:flutter/material.dart';
import 'info_row.dart';

class ProfileCard extends StatelessWidget {
  final bool isFollowing;
  final VoidCallback onFollow;
  final VoidCallback onViewProfile;

  const ProfileCard({
    super.key,
    required this.isFollowing,
    required this.onFollow,
    required this.onViewProfile,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 55,
              backgroundImage: AssetImage('assets/images/profile.png'),
            ),
            const SizedBox(height: 16),

            const Text(
              "Aqila Akther",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Color(0xFF37474F)),
            ),
            const SizedBox(height: 4),
            Text(
              "Flutter Developer",
              style: TextStyle(fontSize: 16, color: Colors.grey[500]),
            ),

            const SizedBox(height: 16),
            Text(
              "Passionate about creating user-friendly and engaging digital experiences.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Colors.grey[700]),
            ),

            const SizedBox(height: 24),

            const InfoRow(icon: Icons.email, text: "aqila@example.com"),
            const InfoRow(icon: Icons.phone, text: "+123 456 7890"),

            const SizedBox(height: 24),

            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: onFollow,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: isFollowing ? Colors.grey[400] : Colors.blue[700],
                      foregroundColor: isFollowing ? Colors.black : Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                      padding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                    child: Text(isFollowing ? "Following" : "Follow", style: const TextStyle(fontSize: 16)),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: OutlinedButton(
                    onPressed: onViewProfile,
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.grey[400]!),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                      padding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                    child: const Text("Message", style: TextStyle(fontSize: 16, color: Colors.black87)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}