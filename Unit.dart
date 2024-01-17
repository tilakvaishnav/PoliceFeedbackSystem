import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Unitscreen());
}

class Unitscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedOption1 = -1;
  int selectedOption2 = -1;
  int selectedOption3 = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade100,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'Police Feedback System',
          style: TextStyle(
              color: Colors.yellow, fontSize: 15, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          buildQuestion(
            'Q.1 Is the Helpline Number 112 is Helpful:',
            [
              'Strongly agree',
              'Agree',
              'Average',
              'Disagree',
              'Strongly Disagree'
            ],
            selectedOption1,
            1,
          ),
          buildQuestion(
            'Q.2 How Intellectual and punctual they are:',
            [
              'Strongly agree',
              'Agree',
              'Average',
              'Disagree',
              'Strongly Disagree'
            ],
            selectedOption2,
            2,
          ),
          buildQuestion(
            'Q.3 How Helpful and responsive they are:',
            [
              'Strongly agree',
              'Agree',
              'Average',
              'Disagree',
              'Strongly Disagree'
            ],
            selectedOption3,
            3,
          ),
          buildQuestion(
            'Q.4 Is your Issue get resolved on time:',
            [
              'Strongly agree',
              'Agree',
              'Average',
              'Disagree',
              'Strongly Disagree'
            ],
            selectedOption3,
            4,
          ),
          buildQuestion(
            'Q.5 How much you Satisfied with their Resolution :',
            [
              'Strongly agree',
              'Agree',
              'Average',
              'Disagree',
              'Strongly Disagree'
            ],
            selectedOption3,
            4,
          ),
          ElevatedButton(
            onPressed: () {
              // Call a function to submit responses to Firebase
              submitResponsesToFirebase();
            },
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }

  Widget buildQuestion(String question, List<String> options,
      int selectedOption, int questionNumber) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            question,
            style: TextStyle(
              color: Colors.green.shade900,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        for (int i = 0; i < options.length; i++)
          RadioListTile<int>(
            title: Text(options[i]),
            value: i,
            groupValue: selectedOption,
            onChanged: (int? value) {
              setState(() {
                if (questionNumber == 1) {
                  selectedOption1 = value!;
                } else if (questionNumber == 2) {
                  selectedOption2 = value!;
                } else if (questionNumber == 3) {
                  selectedOption3 = value!;
                }
              });
            },
          ),
      ],
    );
  }

  Future<void> submitResponsesToFirebase() async {
    // Assuming you are using Cloud Firestore
    CollectionReference responses =
        FirebaseFirestore.instance.collection('user_responses');

    try {
      await responses.add({
        'question1': selectedOption1,
        'question2': selectedOption2,
        'question3': selectedOption3,
        // Add more fields as needed
      });
      print('Responses submitted to Firebase.');
    } catch (e) {
      print('Error submitting responses: $e');
    }
  }
}
