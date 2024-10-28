import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.red,
      scaffoldBackgroundColor: Colors.white,
    ),
    home: DonationRequestPage(),
  ));
}

class DonationRequestPage extends StatefulWidget {
  @override
  _DonationPageState createState() => _DonationPageState();
}

class _DonationPageState extends State<DonationRequestPage> {
  
  void _donateBlood() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Donate Blood"),
        content: Text("Thank you for your interest in donating blood!"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text("Close"),
          ),
        ],
      ),
    );
  }

  void _requestBlood() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Request Blood"),
        content: Text("Please provide details to request blood."),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text("Close"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Request & Donate Blood"),
        backgroundColor: Colors.red.shade700,
      ),
      body: Center(
        child: Text(
          "Welcome to the Blood Bank",
          style: TextStyle(fontSize: 24, color: Colors.black87),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: _donateBlood,
            heroTag: "donateButton",
            backgroundColor: Colors.red,
            child: Icon(Icons.volunteer_activism),
            tooltip: 'Donate Blood',
          ),
          SizedBox(height: 16),
          FloatingActionButton(
            onPressed: _requestBlood,
            heroTag: "requestButton",
            backgroundColor: Colors.blue,
            child: Icon(Icons.local_hospital),
            tooltip: 'Request Blood',
          ),
        ],
      ),
    );
  }
}
