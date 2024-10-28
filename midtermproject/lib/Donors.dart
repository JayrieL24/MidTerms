import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.red,
      scaffoldBackgroundColor: Colors.white,
    ),
    home: DonorsPage(),
  ));
}

class DonorsPage extends StatelessWidget {
  
  void _becomeADonor(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Become A Donor"),
        content: Text("Thank you for your interest in becoming a blood donor!"),
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
        title: Text("Consistent Donors"),
        backgroundColor: Colors.red.shade700,
      ),
      body: Center(
        child: Text("No donor data available."),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _becomeADonor(context),
        backgroundColor: Colors.red,
        icon: Icon(Icons.volunteer_activism),
        label: Text("Become a Donor"),
      ),
    );
  }
}
