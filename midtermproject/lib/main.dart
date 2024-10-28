import 'package:flutter/material.dart';
import 'DonateRequest.dart';
import 'BloodBank.dart';
import 'Donors.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      scaffoldBackgroundColor: Colors.white,
      colorScheme: ColorScheme.light().copyWith(
        primary: Color(0xFF20262B),
        onPrimary: Colors.white,
        error: Colors.red,
      ),
    ),
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    BloodBankPage(),
    DonationRequestPage(),
    DonorsPage(),
  ];

  final List<String> _titles = [
    'Blood Bank',
    'Donate & Request',
    'Donors',
  ];

  final List<IconData> _icons = [
    Icons.local_hospital,
    Icons.people,
    Icons.list_alt,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            selectedIndex: _selectedIndex,
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            labelType: NavigationRailLabelType.all,
            destinations: List.generate(
              _titles.length,
              (index) => NavigationRailDestination(
                icon: Icon(
                  _icons[index],
                  color: _selectedIndex == index
                      ? Theme.of(context).colorScheme.primary
                      : Colors.grey,
                ),  
                label: Text(_titles[index]),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: _pages[_selectedIndex],
            ),
          ),
        ],
      ),
    );
  }
}
