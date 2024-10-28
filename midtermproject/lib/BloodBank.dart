import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: BloodBankPage(),
  ));
}

class BloodBankPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Blood Bank'),
        backgroundColor: Colors.red[800],
      ),
      body: Center(
        child: Text(
          'No blood data available.',
          style: TextStyle(fontSize: 18, color: Colors.grey),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Action to add blood type
        },
        backgroundColor: Colors.red,
        child: Icon(Icons.add),
      ),
    );
  }
}
