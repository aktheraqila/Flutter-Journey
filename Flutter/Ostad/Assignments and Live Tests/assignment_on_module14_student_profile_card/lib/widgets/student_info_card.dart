import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StudentInfoCard extends StatelessWidget {
  const StudentInfoCard({super.key});

  void openDetailsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          title: Row(
            children: [
              Icon(Icons.school, color: Colors.indigo.shade800),
              SizedBox(width: 8),
              Text("Student Details"),
            ],
          ),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(
                TextSpan(children: [
                  TextSpan(text: "Name: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Mike Rack"),
                ]),
              ),
              SizedBox(height: 5),
              Text.rich(
                TextSpan(children: [
                  TextSpan(text: "ID: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "STU-2025-0042"),
                ]),
              ),
              SizedBox(height: 5),
              Text.rich(
                TextSpan(children: [
                  TextSpan(text: "Dept: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Computer Science & Engineering"),
                ]),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(ctx),
              child: Text("Close", style: TextStyle(color: Colors.indigo.shade800)),
            ),
          ],
        );
      },
    );
  }

  void showAttendanceSnackbar(BuildContext context) {
    // success msg
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Mike Rack marked as Present \u2705"),
        backgroundColor: Colors.black87,
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isDesktop = constraints.maxWidth > 600;

        return Card(
          elevation: 5,
          shadowColor: Colors.black26,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Container(
            width: isDesktop ? 300 : 300.w,
            padding: EdgeInsets.all(isDesktop ? 20 : 20.w),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Badge(
                  label: const Text("New"),
                  backgroundColor: Colors.redAccent,
                  offset: const Offset(5, 0),
                  child: CircleAvatar(
                    radius: isDesktop ? 40 : 40.r,
                    backgroundColor: Colors.indigo.shade100,
                    child: Icon(
                      Icons.person,
                      size: isDesktop ? 45 : 45.sp,
                      color: Colors.indigo.shade800,
                    ),
                  ),
                ),
                SizedBox(height: isDesktop ? 15 : 15.h),
                Text(
                  "Mike Rack",
                  style: TextStyle(
                    fontSize: isDesktop ? 22 : 22.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo.shade800,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "ID: STU-2025-0042",
                  style: TextStyle(
                    fontSize: isDesktop ? 14 : 14.sp,
                    color: Colors.grey.shade600,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Computer Science & Engineering",
                  style: TextStyle(
                    fontSize: isDesktop ? 12 : 12.sp,
                    color: Colors.grey.shade500,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: isDesktop ? 25 : 25.h),
                SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton.icon(
                    onPressed: () => openDetailsDialog(context),
                    icon: const Icon(Icons.info_outline, size: 18),
                    label: const Text("View Details"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo.shade600,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 12),
                SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: OutlinedButton.icon(
                    onPressed: () => showAttendanceSnackbar(context),
                    icon: const Icon(Icons.check_circle_outline, size: 18, color: Colors.green),
                    label: const Text("Mark Present", style: TextStyle(color: Colors.green)),
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.green),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}