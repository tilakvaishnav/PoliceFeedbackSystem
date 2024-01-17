import 'package:flutter/material.dart';
import 'package:police_feedback/chat_boot.dart';

void main() {
  runApp(LoginScreen());
}

class Loginscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade100,
      appBar: AppBar(
        title: Text(
          'Welcome to Police Feedback System',
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.teal.shade900),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Rajasthan Police Hackathon 1.0',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal.shade900),
            ),
            Image.asset(
              "assets/police1.png", // Add your police logo asset
              height: 100,
              width: 100,
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: SizedBox(
                height: 44,
                child: TextField(
                  controller: usernameController,
                  style: const TextStyle(fontSize: 12),
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      label: Text(
                        'Username',
                        style: TextStyle(color: Colors.teal.shade900),
                      ),
                      filled: true,
                      fillColor: const Color(0xffF2F2F2),
                      contentPadding:
                          const EdgeInsets.only(left: 10, right: 10),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black.withOpacity(0.1))),
                      disabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black.withOpacity(0.1))),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black.withOpacity(0.1))),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.black.withOpacity(0.1)))),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: SizedBox(
                height: 44,
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  style: const TextStyle(fontSize: 12),
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      label: Text(
                        'Password',
                        style: TextStyle(color: Colors.teal.shade900),
                      ),
                      filled: true,
                      fillColor: const Color(0xffF2F2F2),
                      contentPadding:
                          const EdgeInsets.only(left: 10, right: 10),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black.withOpacity(0.1))),
                      disabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black.withOpacity(0.1))),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black.withOpacity(0.1))),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.black.withOpacity(0.1)))),
                ),
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                // Implement your authentication logic here
                String username = usernameController.text;
                String password = passwordController.text;

                // Example: Check if the credentials are valid
                if (username == 'admin' && password == 'password') {
                  // Navigate to the next screen or perform the required action
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => chatBoot()),
                  );
                } else {
                  // Show an error message or handle authentication failure
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Authentication Failed'),
                        content: Text('Invalid username or password.'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                }
              },
              child: Container(
                height: 44,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.teal.shade900,
                    borderRadius: BorderRadius.circular(5)),
                child: const Center(
                    child: Text(
                  'Log in',
                  style: TextStyle(color: Colors.white),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FeedbackScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback Screen'),
      ),
      body: Center(
        child: Text('Welcome to the Feedback System!'),
      ),
    );
  }
}
