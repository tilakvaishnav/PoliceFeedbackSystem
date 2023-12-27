import 'package:flutter/material.dart';

class chatBoot extends StatefulWidget {
  const chatBoot({super.key});

  @override
  State<chatBoot> createState() => _chatBootState();
}

class _chatBootState extends State<chatBoot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.cyan,
        title: Text(
          'Police Feedback System',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            SizedBox(width: 280),
            Column(
              children: [
                SizedBox(width: 280),
                Image.asset(
                  "assets/police1.png",
                  height: 173,
                  width: 173,
                ),
                Text(
                  "Welcome to Awareness Program",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: "Times New Roman",
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "Rajasthan Police Feedback Management System",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: "Times New Roman",
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Police Station"),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(onPressed: () {}, child: Text("Unit")),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Text(
        "Designed By Developed by Code Commander",
        style: TextStyle(
            color: Colors.white, backgroundColor: Colors.green, fontSize: 30),
      ),
    );
  }
}
