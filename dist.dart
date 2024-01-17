import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class District {
  String name;
  List<String> policeStations;

  District(this.name, this.policeStations);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.yellow.shade100,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Rajasthan Police Feedback System',
            style: TextStyle(
                color: Colors.orange.shade900, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Center(
              child: DistrictDropdown(),
            ),
          ],
        ),
      ),
    );
  }
}

class DistrictDropdown extends StatefulWidget {
  @override
  _DistrictDropdownState createState() => _DistrictDropdownState();
}

class _DistrictDropdownState extends State<DistrictDropdown> {
  String selectedDistrict = 'Ajmer';
  String selectedPoliceStation = 'Ajmer Police Station 1';

  List<District> districts = [
    District('Ajmer', ['Ajmer Police Station 1', 'Ajmer Police Station 2']),
    District('Alwar', ['Alwar Police Station A', 'Alwar Police Station B']),
    District(
        'Banswara', ['Banswara Police Station X', 'Banswara Police Station Y']),
    District('Baran', ['Alwar Police Station A', 'Alwar Police Station B']),
    District('Barmer', ['Alwar Police Station A', 'Alwar Police Station B']),
    District('Bharatpur', ['Alwar Police Station A', 'Alwar Police Station B']),
    District('Bhilwara', ['Alwar Police Station A', 'Alwar Police Station B']),
    District('Bikaner', ['Alwar Police Station A', 'Alwar Police Station B']),
    District('Bundi', ['Alwar Police Station A', 'Alwar Police Station B']),
    District(
        'Chittorgarh', ['Alwar Police Station A', 'Alwar Police Station B']),
    District('Churu', ['Alwar Police Station A', 'Alwar Police Station B']),
    District('Dholpur', ['Alwar Police Station A', 'Alwar Police Station B']),
    District('Dungarpur', ['Alwar Police Station A', 'Alwar Police Station B']),
    District(
        'Hanumangarh', ['Alwar Police Station A', 'Alwar Police Station B']),
    District('Jaipur', [
      'adarsh nagar',
      'kho Nagoriyan',
      'jawahar nagar',
      'pratap nagar',
      'Sanganer thana'
    ]),
    District('Jaisalmer', ['Alwar Police Station A', 'Alwar Police Station B']),
    District('Jalore', ['Alwar Police Station A', 'Alwar Police Station B']),
    District('Jhalawar', ['Alwar Police Station A', 'Alwar Police Station B']),
    District('Jhunjhunu', ['Alwar Police Station A', 'Alwar Police Station B']),
    District('Jodhpur', ['Alwar Police Station A', 'Alwar Police Station B']),
    District('Karauli', ['Alwar Police Station A', 'Alwar Police Station B']),
    District('Kota', ['Alwar Police Station A', 'Alwar Police Station B']),
    District('Nagaur', ['Alwar Police Station A', 'Alwar Police Station B']),
    District(
        'Pratapgarh', ['Alwar Police Station A', 'Alwar Police Station B']),
    District('Rajsamand', ['Alwar Police Station A', 'Alwar Police Station B']),
    District(
        'Sawai Madhopur', ['Alwar Police Station A', 'Alwar Police Station B']),
    District('Sikar', ['Alwar Police Station A', 'Alwar Police Station B']),
    District('Sirohi', ['Alwar Police Station A', 'Alwar Police Station B']),
    District('Tonk', ['Alwar Police Station A', 'Alwar Police Station B']),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 20,
        ),
        Text(
          'RAJASTHAN POLICE HACKATHON 1.0',
          style: TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        Image.asset(
          "assets/police1.png", // Add your police logo asset
          height: 100,
          width: 100,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Welcome to Our Rajasthan Police Intelligent Feedback System which is Designed and Developed by the Team @Code Commanders So,this is Police Feedback system which consits of same functionalities as developed already but there is some changes in it which is that in this Feedback System without the disclosure of ones identity you can give your Honest Feedback which helps to serve the state more efficient way',
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.teal.shade900),
          ),
        ),
        Text(
          'Selected District: $selectedDistrict',
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(height: 20),
        DropdownButton<String>(
          style: TextStyle(fontSize: 20, color: Colors.green.shade900),
          value: selectedDistrict,
          onChanged: (String? newValue) {
            setState(() {
              selectedDistrict = newValue!;
              selectedPoliceStation = districts
                  .firstWhere((district) => district.name == selectedDistrict)
                  .policeStations
                  .first;
            });
          },
          items: districts.map<DropdownMenuItem<String>>((District district) {
            return DropdownMenuItem<String>(
              value: district.name,
              child: Text(district.name),
            );
          }).toList(),
        ),
        SizedBox(height: 20),
        Text(
          'Selected Police Station: $selectedPoliceStation',
          style: TextStyle(fontSize: 20, color: Colors.green.shade900),
        ),
        SizedBox(height: 20),
        DropdownButton<String>(
          style: TextStyle(fontSize: 20),
          value: selectedPoliceStation,
          onChanged: (String? newValue) {
            setState(() {
              selectedPoliceStation = newValue!;
            });
          },
          items: districts
              .firstWhere((district) => district.name == selectedDistrict)
              .policeStations
              .map<DropdownMenuItem<String>>((String policeStation) {
            return DropdownMenuItem<String>(
              value: policeStation,
              child: Text(policeStation),
            );
          }).toList(),
        ),
        Text(
          'Now please submit your Honest feedback in a word limit upto 500 words',
          style: TextStyle(
              fontSize: 22,
              color: Colors.teal.shade900,
              fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Container(
            height: 300,
            child: TextField(
              maxLines: 5,
              style: const TextStyle(fontSize: 20),
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                  hintMaxLines: 5,
                  label: Text(
                    'Enter your Honest feedback',
                    style: TextStyle(color: Colors.teal.shade900),
                  ),
                  filled: true,
                  fillColor: const Color(0xffF2F2F2),
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
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
                      borderSide:
                          BorderSide(color: Colors.black.withOpacity(0.1)))),
            ),
          ),
        ),
        Container(
          height: 44,
          width: 100,
          decoration: BoxDecoration(
              color: Colors.teal.shade900,
              borderRadius: BorderRadius.circular(5)),
          child: const Center(
              child: Text(
            'Submit',
            style: TextStyle(color: Colors.white),
          )),
        ),
      ],
    );
  }
}
