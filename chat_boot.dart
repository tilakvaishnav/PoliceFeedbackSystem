import 'package:flutter/material.dart';
import 'package:police_feedback/Unit.dart';
import 'package:police_feedback/dist.dart';
import 'package:police_feedback/loginscreen.dart';

class chatBoot extends StatefulWidget {
  const chatBoot({Key? key}) : super(key: key);

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
        backgroundColor: Colors.red,
        title: Text(
          'Police Feedback System',
          style: TextStyle(fontWeight: FontWeight.w900, color: Colors.yellow),
        ),
        automaticallyImplyLeading: false,
        actions: [
          InkWell(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
            child: Container(
              height: 25,
              child: Text(
                'Log out',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "RAJASTHAN POLICE HACKATHON 1.0",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 280),
                Image.asset(
                  "assets/police1.png",
                  height: 260,
                  width: 260,
                ),
                Text(
                  "Welcome to Awareness Program",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontFamily: "Times New Roman",
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "Rajasthan Police Feedback Management System",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontFamily: "Times New Roman",
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return MyApp();
                      },
                    ));
                  },
                  child: Text("Police Station"),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return Unitscreen();
                      },
                    ));
                  },
                  child: Text("Unit"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
