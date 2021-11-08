import 'package:flutter/material.dart';

// 1
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedPage = 0;

  static List<Widget> pages = [
    Container(
      color: Colors.teal,
    ),
    Container(
      color: Colors.lime,
    ),
    Container(
      color: Colors.pinkAccent,
    ),
  ];

  static List<String> _appbarTitles = ['Tab1', 'Tab2', 'Tab3'];

  void _onItemTapped(int index) {
    setState(() {
      _selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _appbarTitles[_selectedPage],
// 2
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
// TODO: Show selected tab
      body: pages[_selectedPage],
// 4
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        currentIndex: _selectedPage,
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
// TODO: Set selected tab bar
// 6
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card2',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card3',
          ),
        ],
      ),
    );
  }
}
